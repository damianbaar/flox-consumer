{
  gnumake,
  mkShell,
  stdenv,
  go-task,
  zlib,
  flox-consumer-package,
  flox-simple-lib,
  hello-world
}:
#
# Create a development shell using three sections:
# `packages`, `buildInputs`, and `shellHook`.
#
mkShell {
  inputsFrom = [
    flox-consumer-package
  ];
  # Compilers and libraries go here
  buildInputs = [
    stdenv.cc
    zlib
  ];

  # Add extra tools here
  packages = [
    gnumake
    go-task
    flox-consumer-package
  ];

  # Any variable set in this block that isn't a reserved word will be set as an
  # environment variable in the environment.
  WELCOME_MESSAGE = "Run make to build this project";
  PKG_REF = "${toString flox-consumer-package}";
  PKG_REF_2 = "${toString flox-simple-lib}";
  PKG_REF_3 = "${toString hello-world}";

  # A shell hook is a script to run when entering an environment.
  # It can be used to perform any custom activation steps needed for your
  # project.
  shellHook = ''
    echo "$WELCOME_MESSAGE"
    echo ${flox-consumer-package}
    echo ${flox-simple-lib}
    echo "CONSUMER"
    echo ${hello-world}
  '';
}
