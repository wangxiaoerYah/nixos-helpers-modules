{ lib
, config
, ...
}:
with lib;
let
  cfg = config.hp.networking;
in
{
  options = {
    hp.networking = {
      IPv6AcceptRA = mkOption {
        type = types.bool;
        default = false;
      };
    };
  };

  config = mkIf (cfg.IPv6AcceptRA && cfg.useDHCP == false && cfg.interfaces != null) {
    boot.kernel.sysctl = {
      "net.ipv6.conf.all.autoconf" = mkForce 0;
      "net.ipv6.conf.all.accept_ra" = mkForce 0;
      "net.ipv6.conf.${cfg.interfaces}.autoconf" = mkForce 0;
      "net.ipv6.conf.${cfg.interfaces}.accept_ra" = mkForce 0;
    };
  };
}
