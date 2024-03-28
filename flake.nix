{
  inputs = {
    impermanence = {
      url = "github:nix-community/impermanence";
    };

  };

  outputs = { self, impermanence }: {
    nixosModules = rec{
      impermanence = impermanence.nixosModules.impermanence;
      helpers-modules = import ./nixos.nix {inherit impermanence;};
      default = helpers-modules;
    };
    nixosModule = self.nixosModules.default;
  };
}
