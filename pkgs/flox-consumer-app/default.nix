{ self
, python3Packages
, hello-python
, flox-consumer-lib
}:
python3Packages.buildPythonPackage {
  pname = "flox_consumer_app";
  version = "0.0.0";
  src = self;
  PIP_DISABLE_PIP_VERSION_CHECK = 1;
  doCheck = false;
  # Add Python modules needed by your package here
  propagatedBuildInputs = with python3Packages; [
    requests
    hello-python
    # flox-consumer-lib
  ];
  buildInputs = with python3Packages; [
    requests
    hello-python
    boto3
    # flox-consumer-lib
  ];
  makeWrapperArgs = [
    # termcolor stopped printing color at some point when invoked without
    # a controlling tty. Set the FORCE_COLOR variable to make it colorful
    # in all cases.
    "--set"
    "FORCE_COLOR"
    "1"
    # The buildPythonApplication development environment sets this variable
    # to use the local libraries in preference to those "baked into" the
    # package, but then makes it impossible to reliably test the built package
    # from within the development environment. That clearly needs some work,
    # but just clear the variable in the meantime.
    "--unset"
    "NIX_PYTHONPATH"
    # Capture the installation prefix and argv[0] for use at runtime.
    "--set"
    "NIX_SELF_PATH"
    "$out"
    "--run 'export NIX_ORIG_ARGV0=$0'"
  ];
  meta.description = "an example flox package";
  meta.mainProgram = "flox_consumer_app";
}

