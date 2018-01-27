{ nixpkgs ? import ./nix/nixpkgs.nix
, scores ? null
, debug ? false
}:

with import nixpkgs {
  config = {
  };
};

with pkgs.lib;

let
  version = builtins.readFile ./VERSION;

  lilypond-with-improviso = lilypond-with-fonts.override {
    fonts = with openlilylib-fonts; [ improviso ];
  };

  FONTCONFIG_FILE = makeFontsConf { fontDirectories = [ ]; };

  openlilylib = fetchFromGitHub {
    owner = "yurrriq";
    repo = "snippets";
    rev = "5d53a3eb0d300795dc55d6c01636839d08afe9bf";
    sha256 = "10ih652q6y33z4wkjnlh47s5ambdwv9bx9zqzkhy3ya8hzlcl8yx";
  };

  mkSong = a@{ songName, pdfName ? songName, ... }:
    stdenv.mkDerivation (a // rec {
      name = "naptime-${songName}-${version}";
      inherit FONTCONFIG_FILE pdfName songName version;
      src = ./. + "/songs/${songName}";

      buildPhase = ''
        install -m755 -d $out
      '';

      preInstall = ''
        installFlagsArray=(
          -B
          openlilylib=${openlilylib}
          lilypond=${lilypond-with-improviso}/bin/lilypond
          job-count=''${NIX_BUILD_CORES:-1}
          pdfName=${pdfName}
          prefix=$out/
          ${optionalString debug "DEBUG=1"}
        );
      '';

      # TODO: meta
    });

  songs = rec {
    waiting_for_my_meeting = mkSong {
      songName = "waiting_for_my_meeting";
    };
    all = [
      waiting_for_my_meeting
    ];
  };

  env = stdenv.mkDerivation rec {
    name = "naptime-${version}-env";
    inherit FONTCONFIG_FILE openlilylib version;
    buildInputs = [
      lilypond-with-improviso
      guile_1_8
      watchman
      pkgs.python27Packages.pywatchman
    ];
  };

  engravedScores =
    if (isNull scores || !isString scores)
       then songs.all
       else map (songName: mkSong { inherit songName; })
                (splitString " " scores);

  drv = stdenv.mkDerivation {
    name = "naptime-${version}";
    inherit FONTCONFIG_FILE engravedScores openlilylib version;
    src = ./songs;

    buildPhase = "true";

    outputs = [ "out" ] ++ map (score: score.songName) engravedScores;

    installPhase = ''
      ${concatMapStringsSep "\n"
          (score: ''
            install -m644 -Dt ''$${score.songName} ${score}/*
            install -m644 -Dt $out ''$${score.songName}/${score.pdfName}.pdf
          '')
          engravedScores}
    '';

    # TODO: meta
  };
in

if inNixShell then env else drv
