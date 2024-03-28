{ lib
, config
, ...
}:
with lib;
let
  cfg = config.hp.system;
in
{
  options = {
    hp = {
      system = {
        hostPlatform = mkOption {
          type = types.str;
          default = "x86_64-linux";
        };
        
      };
    };
  };
}
