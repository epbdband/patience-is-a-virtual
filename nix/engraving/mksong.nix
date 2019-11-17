{ pkgs, makeFontsConf, lilypond }:

config@{ loglevel ? "info", songName, pdfName ? songName, srcDir, ... }:
let
  Makefile = pkgs.writeText "Makefile" (builtins.readFile ./Makefile);
  pname = builtins.concatStringsSep "-"
    (map pkgs.lib.engraving.snakeCase [ config.band config.album songName ]);
in
pkgs.stdenv.mkDerivation {
  inherit (config) version;
  inherit pname;

  src = "${srcDir}/songs/${songName}";

  nativeBuildInputs = [
    lilypond
  ];

  FONTCONFIG_FILE = makeFontsConf { fontDirectories = []; };

  enableParallelBuilding = true;

  buildPhase = ''
    install -m644 ${Makefile} ./Makefile
    install -dm755 ${placeholder "out"}
  '';

  installFlags = [
    "loglevel=${loglevel}"
    "pdfName=${pdfName}"
    "prefix=${placeholder "out"}"
  ];

  meta = config.meta // rec {
    description = "${songName} by ${config.band}";
    longDescription = ''
      Score for ${description} from ${config.album}.
    '';
    homepage = "${config.meta.homepage}/blob/master/songs/${songName}";
  };
}
