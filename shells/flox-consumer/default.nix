{ gnumake
, mkShell
, stdenv
, go-task
, zlib
, python3
, flox-consumer-lib
# , flox-simple-lib
, flox-consumer-app
, hello-python
}:
#
# Create a development shell using three sections:
# `packages`, `buildInputs`, and `shellHook`.
#
mkShell {
  inputsFrom = [
    flox-consumer-lib
    # flox-simple-lib
    flox-consumer-app
    hello-python
  ];
  # Compilers and libraries go here
  buildInputs = [
    stdenv.cc
    zlib
    hello-python
    # flox-simple-lib
    flox-consumer-app
  ];

  # Add extra tools here
  packages = [
    gnumake
    go-task
    hello-python
    flox-consumer-app
  ];

  # Any variable set in this block that isn't a reserved word will be set as an
  # environment variable in the environment.
  WELCOME_MESSAGE = "Run make to build this project";
  # PKG_REF = "${toString flox-consumer-lib}";
  # PKG_REF_3 = "${toString hello-python}";

  # A shell hook is a script to run when entering an environment.
  # It can be used to perform any custom activation steps needed for your
  # project.
  shellHook = ''
    echo "$WELCOME_MESSAGE"
    echo ${flox-consumer-lib}
    echo "CONSUMER"
    echo ${hello-python}
    echo ${flox-consumer-app}
  '';
}
