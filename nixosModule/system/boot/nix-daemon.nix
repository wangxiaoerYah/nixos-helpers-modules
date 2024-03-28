{ lib
, config
, ...
}:
with lib; {

  config = {

    # Effective For root User
    environment.variables.NIX_REMOTE = "daemon";

    # Nix Build Cache Dir Config 
    systemd.services.nix-daemon = {
      environment = {
        TMPDIR = "/var/cache/nix-daemon";
      };
      serviceConfig = {
        CacheDirectory = "nix-daemon";
      };
    };

  };

}
