{ config
, lib
, ...
}:
with lib;
let
  cfg = config.hp.fileSystems.btrfs-autoScrub;
  isBtrfsRoot = (config.fileSystems."/nix".fsType or "") == "btrfs";

in
{

  options = {
    hp.fileSystems.btrfs-autoScrub = {
      enable = mkOption {
        type = types.bool;
        default = true;
      };
    };

  };

  config = mkIf (isBtrfsRoot && cfg.enable) {

    services.btrfs.autoScrub = {
      enable = true;
      interval = "weekly";
      fileSystems = [ "/nix" ];
    };

  };
}
