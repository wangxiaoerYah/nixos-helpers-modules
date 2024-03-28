{ config
, lib
, ...
}:
with lib;
let
  cfg = config.hp.fileSystems.tmpfs-as-root;
  btrfs_options = "compress=zstd,ssd,noatime,discard=async,space_cache=v2,commit=120";

  fsConfig = filterAttrs (name: value: value != { }) {

    "/" = optionalAttrs (cfg.enable) {
      device = "none";
      fsType = "tmpfs";
      options = [ "relatime" "mode=755" "nosuid" "nodev" ];
    };

    "/boot" = optionalAttrs (cfg.enable && cfg.boot != null) {
      device = "/dev/disk/by-uuid/${cfg.boot}";
      fsType = "vfat";
      options = [ "shortname=mixed,utf8" ];
    };

    "/nix" = optionalAttrs (cfg.enable && cfg.nix != null) {
      device = "/dev/disk/by-uuid/${cfg.nix}";
      fsType = "btrfs";
      options = [ "subvol=nixos@,${btrfs_options}" ];
    };

    "/nix/persistent" = optionalAttrs (cfg.enable && cfg.persistent != null) {
      device = "/dev/disk/by-uuid/${cfg.persistent}";
      neededForBoot = true;
      fsType = "btrfs";
      options = [ "subvol=nixos@persistent,${btrfs_options}" ];
    };

    "/etc/nixos" = optionalAttrs (cfg.enable && cfg.nixos != null) {
      device = "/dev/disk/by-uuid/${cfg.nixos}";
      fsType = "btrfs";
      options = [ "subvol=nixos@nixos,${btrfs_options}" ];
    };

  };

in
{

  options = {
    hp.fileSystems = {
      tmpfs-as-root = {
        enable = mkOption {
          type = types.bool;
          default = true;
        };

        boot = mkOption {
          type = types.nullOr types.str;
          default = null;
        };

        nix = mkOption {
          type = types.nullOr types.str;
          default = null;
        };

        persistent = mkOption {
          type = types.nullOr types.str;
          default = null;
        };

        nixos = mkOption {
          type = types.nullOr types.str;
          default = null;
        };
      };


    };
  };

  config = {

    fileSystems = fsConfig;

  };

}
