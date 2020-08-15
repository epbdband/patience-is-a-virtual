self: super: rec {

  inherit (import (import ./sources.nix).niv { pkgs = super; }) niv;

  inherit (import ./sources.nix) breaks edition-engraver gridly lalily-templates naptaker oll-core page-layout;

  lilypond-unstable = super.callPackage ./lilypond/unstable.nix {
    inherit (super) lilypond;
  };

  lilypond-with-improviso = super.callPackage ./lilypond.nix {
    lilypond = lilypond-unstable.with-fonts [ "improviso" ];
  };

  oll-lib = self.callPackage ./oll-lib.nix {};

  lib = super.lib // {
    engraving = {
      mkSong = super.callPackage ./engraving/mksong.nix {};
      snakeCase = str: builtins.replaceStrings [ " " ] [ "_" ] (lib.toLower str);
    };
  };

}
