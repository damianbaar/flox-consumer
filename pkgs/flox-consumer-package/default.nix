# Replace "stdenv" with the namespace or name of your language's builder
{
  self,
  stdenv,
  lib,
  # db-flox-simple-lib
}:
# Replace "stdenv.mkDerivation" with your language's builder
stdenv.mkDerivation {
  pname = "flox-consumer-package";
  version = "0.0.0-${lib.flox-floxpkgs.getRev self}";
  src = self; # + "/src";

  # Add runtime dependencies to buildInputs.
  buildInputs = [];

  # Add runtime dependencies required by packages that
  # depend on this package to propagatedBuildInputs.
  propagatedBuildInputs = [];

  installPhase = ''
    mkdir -p $out
    touch $out/test.txt
    echo "###" > $out/test.txt
    '';
    # echo ${packages.aarch64-darwin.flox-simple-lib}

  # Add buildtime dependencies (not required at runtime)
  # to nativeBuildInputs.
  nativeBuildInputs = [];
  meta.description = "an example flox package";
}
