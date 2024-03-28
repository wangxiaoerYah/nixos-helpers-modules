{ lib
, config
, pkgs
, ...
}:
with lib; {

  config = {

    systemd = {
      # package = pkgs.systemd.override {
      #   withSelinux = true;
      # };
      packages = [ ];
    };


  };

}
