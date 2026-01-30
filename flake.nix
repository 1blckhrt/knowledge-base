{
  description = "Markdown environment with LSP servers, formatters, and preview tools for my knowledge base.";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    hooks = {
      url = "github:cachix/git-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    hooks,
    ...
  }: let
    inherit (nixpkgs) lib;

    systems = [
      "aarch64-linux"
      "i686-linux"
      "x86_64-linux"
      "aarch64-darwin"
      "x86_64-darwin"
    ];

    forAllSystems = f:
      lib.genAttrs systems (system:
        f rec {
          pkgs = nixpkgs.legacyPackages.${system};
          inherit system;
        });
  in {
    checks = forAllSystems ({
      system,
      pkgs,
      ...
    }: {
      pre-commit-check = hooks.lib.${system}.run {
        src = ./.;
        package = pkgs.prek;
        hooks = {
          alejandra.enable = true;

          prettier = {
            enable = true;
            excludes = ["flake.lock"];
          };
        };
      };
    });

    devShells = forAllSystems ({
      pkgs,
      system,
    }: let
      check = self.checks.${system}.pre-commit-check;
    in {
      default = pkgs.mkShell {
        inherit (check) shellHook;

        buildInputs =
          check.enabledPackages
          ++ (builtins.attrValues {
            inherit (pkgs) markdown-oxide glow just hugo;
            inherit (pkgs.nodePackages) prettier;
          });
      };
    });

    formatter = forAllSystems ({pkgs, ...}: pkgs.alejandra);
  };
}
