{
  description = "Dev Shell for Zola.";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        zola
      ];

      # Shell hooks.
      shellHook = ''
        echo "Entering the development environment!"
        zola --version

        trap 'echo "Leaving the development environment!"' EXIT
      '';
    };
  };
}
