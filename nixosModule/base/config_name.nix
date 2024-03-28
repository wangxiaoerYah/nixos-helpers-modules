{ lib
, config
, ...
}:
with lib;
let
  cfg = config.hp.base;
in
{
  options = {
    hp.base = {
      config_name = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = "config name";
      };

    };
  };


}
