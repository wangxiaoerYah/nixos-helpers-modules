{ config
, lib
, ...
}:
let
  gui-system = lib.optional (builtins.elem config.hp.lib.tags.gui config.hp.base.tags) ["/etc/NetworkManager/system-connections"];
in
{
  config = {

    environment.persistence."/nix/persistent" = {
      hideMounts = true;
      directories = [
        "/var/lib"
        "/var/cache"
        "/var/log"
        "/var/www"
        { directory = "/opt"; user = "root"; group = "users"; mode = "u=rwx,g=rwx,o=rwx"; }
      ]
      ++ gui-system;
      files = [
        "/etc/machine-id"
      ];
    };

  };

}
