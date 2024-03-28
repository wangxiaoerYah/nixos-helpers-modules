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
      tags = mkOption {
        type = types.listOf types.str;
        default = [ ];
      };
    };
  };
}
