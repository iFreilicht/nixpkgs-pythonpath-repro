{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        pythonEnv = pkgs.python3.withPackages (ps:
          with ps; [
            lxml
          ]);
      in
      {
        devShell = pkgs.mkShell {
          packages = with pkgs; [
            pythonEnv
            gnumake
            # Uncomment next line to fix the pythonpath issue
            # grc
          ];
        };
      });
}
