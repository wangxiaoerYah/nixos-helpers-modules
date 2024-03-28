{ lib
, ...
}:
with lib;
{
  options = {
    hp.lib.tags = {
      gui = mkOption {
        type = types.str;
        readOnly = true;
        default = "gui";
      };

      client = mkOption {
        type = types.str;
        readOnly = true;
        default = "client";
      };

      server = mkOption {
        type = types.str;
        readOnly = true;
        default = "server";
      };

      wg = mkOption {
        type = types.str;
        readOnly = true;
        default = "wg";
      };

      vpn = mkOption {
        type = types.str;
        readOnly = true;
        default = "vpn";
      };

    };
  };

}
