{ ...
}:
{
  imports = [
    ./journald.nix
    ./kernel.nix
    ./nix-daemon.nix
    ./resolved.nix
    ./systemd.nix
    ./timesyncd.nix
  ];
}
