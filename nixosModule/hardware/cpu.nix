{ lib
, config
, ...
}:
with lib;
let
  cfg = config.hp.hardware.cpu;

  SecureConfig = filterAttrs (name: value: value != { }) {
    hardware.cpu.intel.sgx.provision = optionalAttrs (cfg != null && cfg == "intel") {
      enable = lib.mkDefault true;
      group = "sgx_prv";
      mode = "0660";
      user = "root";
    };
    hardware.cpu.amd.sev = optionalAttrs (cfg != null && cfg == "amd") {
      enable = lib.mkDefault true;
      group = "sev";
      mode = "0660";
      user = "root";
    };
  };
  
in
{
  options = {
    hp.hardware.cpu = mkOption {
      type = types.nullOr types.str;
      default = null;
    };
  };

  config = mkIf (cfg != null || cfg == "amd" || cfg == "intel")
    {
      # Whether to enable all firmware regardless of license.
      hardware.enableAllFirmware = true;
      #Whether to enable firmware with a license allowing redistribution.
      hardware.enableRedistributableFirmware = lib.mkDefault config.hardware.enableAllFirmware;

      hardware.cpu.${cfg}.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
    } // SecureConfig;
}
