{ lib
, pkgs
, config
, ...
}:
with lib;
let
  cfg = config.hp.hardware.gpu;

  GPU_select = {

    intelGPU = {

      enable = true;
      driSupport = true;
      extraPackages = with pkgs;[
        intel-compute-runtime
        intel-media-driver # LIBVA_DRIVER_NAME=iHD
        (vaapiIntel.override { enableHybridCodec = true; }) # LIBVA_DRIVER_NAME=i965 (older but works better for Firefox/Chromium)
        vaapiVdpau
        libvdpau-va-gl
      ];

    };

    amdGPU = {

      enable = true;
      driSupport = true;
      extraPackages = with pkgs;[
        rocmPackages.clr.icd
        amdvlk
      ];
      
    };

    nvidiaGPU = { };

  };

in
{

  options = {
    hp.hardware.gpu =
      {
        enable = mkOption {
          type = types.bool;
          default = false;
        };

        core = mkOption {
          type = types.nullOr types.str;
          default = config.hp.hardware.cpu;
        };

      };
  };

  config = mkIf ((cfg.enable || builtins.elem config.hp.lib.tags.gui config.hp.base.tags) && cfg.core != null)
    {
      #### INTEL ####
      # Force intel-media-driver
      environment.sessionVariables = optionalAttrs (cfg.core == "intel") { LIBVA_DRIVER_NAME = "iHD"; };
      # https://nixos.wiki/wiki/Intel_Graphics
      # boot.kernelParams = [ "i915.force_probe=<device ID>" ];

      #### AMD ####
      boot.initrd.kernelModules = optional (cfg.core == "amd") [ "amdgpu" ];
      systemd.tmpfiles.rules = optional (cfg.core == "amd") [ "L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}" ];

      #### NVIDIA ####
      # TODO

      hardware.opengl = GPU_select.${cfg.core} or { };

    };

}
