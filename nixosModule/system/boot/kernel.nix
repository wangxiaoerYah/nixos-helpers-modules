{ config
, pkgs
, lib
, ...
}:
with lib;
let
  cfg = config.hp.boot;
in
{

  options = {
    hp.boot = {
      kernelParams = mkOption {
        type = types.listOf types.str;
        default = [ ];
      };
    };
  };

  config = {

    boot = {
      kernelPackages = pkgs.linuxKernel.packages.linux_zen;
      kernelParams = [
        # "quiet"
        # "security=selinux"
      ] ++ cfg.kernelParams;
      initrd = {
        enable = true;
        systemd = {
          enable = true;
        };
      };

    };
  };
}
