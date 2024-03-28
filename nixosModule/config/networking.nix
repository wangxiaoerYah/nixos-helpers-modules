{ lib
, config
, options
, pkgs
, ...
}:
with lib;
let

  addrOpts = v:
    assert v == 4 || v == 6;
    { options = {
        address = mkOption {
          type = types.str;
          description = lib.mdDoc ''
            IPv${toString v} address of the interface. Leave empty to configure the
            interface using DHCP.
          '';
        };

        prefixLength = mkOption {
          type = types.addCheck types.int (n: n >= 0 && n <= (if v == 4 then 32 else 128));
          description = lib.mdDoc ''
            Subnet mask of the interface, specified as the number of
            bits in the prefix (`${if v == 4 then "24" else "64"}`).
          '';
        };
      };
    };

  cfg = config.hp.networking;

  interface_addresses_Config = filterAttrs (name: value: value != [ ]) {
    mtu = cfg.mtu;
    ipv4.addresses = cfg.ipv4_addr;
    ipv6.addresses = cfg.ipv6_addr;
  };

  gatewayConfig = filterAttrs (name: value: value != { }) {
    defaultGateway = optionalAttrs (cfg.useDHCP == false && cfg.interfaces != null && cfg.Gateway4 != null) {
      address = cfg.Gateway4;
      interface = cfg.interfaces;
    };
    defaultGateway6 = optionalAttrs (cfg.useDHCP == false && cfg.interfaces != null && cfg.Gateway6 != null) {
      address = cfg.Gateway6;
      interface = cfg.interfaces;
    };
  };

  interfacesConfig = filterAttrs (name: value: value != { }) {
    interfaces = optionalAttrs (cfg.useDHCP == false && cfg.interfaces != null) {
      ${cfg.interfaces} = interface_addresses_Config;
    };
  };

  networkmanagerConfig = filterAttrs (name: value: value != { }) {
    networkmanager = optionalAttrs (builtins.elem config.hp.lib.tags.gui config.hp.base.tags) {
      enable = true;
      dns = "systemd-resolved";
      dhcp = "internal";
      logLevel = "WARN";
      wifi.backend = "iwd";
    };
    wireless = optionalAttrs (builtins.elem config.hp.lib.tags.gui config.hp.base.tags) {
      iwd = {
        enable = true;
        package = pkgs.iwd;
      };

    };
  };

in
{
  options = {

    hp = {
      # Network
      networking = {
        hostName = mkOption {
          type = types.nullOr types.str;
          default = config.hp.base.config_name;
        };

        interfaces = mkOption {
          type = types.nullOr types.str;
          default = null;
        };

        mtu = mkOption {
          type = types.int;
          default = 1500;
        };

        ipv4_addr = mkOption {
          type = with types; listOf (submodule (addrOpts 4));
          example = [
            { address = "10.0.0.1"; prefixLength = 16; }
            { address = "192.168.1.1"; prefixLength = 24; }
          ];
          default = [ ];
          description = lib.mdDoc ''
            List of IPv4 addresses that will be statically assigned to the interface.
          '';
        };

        ipv6_addr = mkOption {
          type = with types; listOf (submodule (addrOpts 6));
          example = [
            { address = "fdfd:b3f0:482::1"; prefixLength = 48; }
            { address = "2001:1470:fffd:2098::e006"; prefixLength = 64; }
          ];
          default = [ ];
          description = lib.mdDoc ''
            List of IPv6 addresses that will be statically assigned to the interface.
          '';
        };

        Gateway4 = mkOption {
          type = types.nullOr types.str;
          default = null;
        };

        Gateway6 = mkOption {
          type = types.nullOr types.str;
          default = null;
        };

        useDHCP = mkOption {
          type = types.bool;
          default = false;
        };

      };
    };

  };

  config = {
    # NetConfig
    networking =
      {
        hostName = mkForce cfg.hostName;
        useNetworkd = mkDefault true;
        useDHCP = mkDefault cfg.useDHCP;

        # domian resolve service
        search = [ "~." ];
        nameservers =
          [
            "1.1.1.1#one.one.one.one"
            "8.8.8.8#dns.google"
            "2606:4700:4700::1111#one.one.one.one"
            "2001:4860:4860::8888#dns.google"

            # "1.1.1.1"
            # "8.8.8.8"
            # "2606:4700:4700::1111"
            # "2001:4860:4860::8888"
          ];

        # time sync service
        timeServers = options.networking.timeServers.default ++
        [
          "time.cloudflare.com"
          "time.nist.gov"
          "time.windows.com"
          "time.apple.com"
        ];
      } // networkmanagerConfig // interfacesConfig // gatewayConfig;
  };
}
