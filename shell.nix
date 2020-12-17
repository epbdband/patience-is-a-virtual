{ pkgs ? import ./nix }:
pkgs.mkShell {
  buildInputs = with pkgs; (
    [
      (
        frescobaldi.override {
          lilypond = lilypond-with-improviso;
        }
      )
      git
      gnumake
      lilypond-with-improviso
      niv
      nixpkgs-fmt
      python3
      qpdfview
      timidity
    ]
  ) ++ (
    with python3Packages; [
      pre-commit
      pywatchman
      yamllint
    ]
  );
  LILYPOND_SHARE_DIR = "${pkgs.lilypond-unstable}/share";
}
