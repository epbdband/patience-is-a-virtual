{ pkgs ? import ./nix
, loglevel ? "info"
}:
let
  version = builtins.readFile ./VERSION;

  config = {
    inherit version loglevel;
    srcDir = ./.;
    band = "EPBD";
    album = "Patience is a Virtual EP";
    meta = {
      homepage = "https://github.com/epbd/patience-is-a-virtual";
      maintainers = with pkgs.stdenv.lib.maintainers; [ yurrriq ];
      license = pkgs.stdenv.lib.licenses.cc-by-nc-40;
    };
  };

  mkSong' = cfg: pkgs.lib.engraving.mkSong.override (
    {
      lilypond = pkgs.lilypond-with-improviso;
    }
  ) (config // cfg);

  pname = builtins.concatStringsSep "-"
    (map pkgs.lib.engraving.snakeCase [ config.band config.album ]);
in
pkgs.symlinkJoin {
  name = "${pname}-${version}";
  inherit (config) meta;
  inherit version;

  paths = with builtins;
    map (songName: mkSong' { inherit songName; })
      (attrNames (readDir ./songs));
}
