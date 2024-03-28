{ ...
}:
{
  imports = [
    ./lib
    ./utils

    ./config_name.nix
    ./tags.nix
    ./hostPlatform.nix

    ../config
    ../hardware
    ../programs
    ../services
    ../system
    ../tasks

  ];
}
