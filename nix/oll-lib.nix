{ stdenv, breaks, edition-engraver, gridly, lalily-templates, naptaker, oll-core, page-layout }:

stdenv.mkDerivation {
  pname = "oll-lib";
  version = "20200504";
  dontUnpack = true;
  dontBuild = true;
  buildInputs = [
    breaks
    edition-engraver
    gridly
    naptaker
    oll-core
    page-layout
  ];
  installPhase = ''
    mkdir -p $out
    cp -rv ${breaks} $out/breaks
    cp -rv ${edition-engraver} $out/edition-engraver
    cp -rv ${gridly} $out/gridly
    cp -rv ${lalily-templates} $out/lalily-templates
    cp -rv ${naptaker} $out/naptaker
    cp -rv ${oll-core} $out/oll-core
    cp -rv ${page-layout} $out/page-layout
  '';
}
