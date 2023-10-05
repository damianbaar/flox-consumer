{
  self,
  python3Packages,
  hello-python
}:
python3Packages.buildPythonPackage {
  pname = "flox-consumer-app";
  version = "0.0.0";
  src = self;
  PIP_DISABLE_PIP_VERSION_CHECK = 1;
  # Add Python modules needed by your package here
  propagatedBuildInputs = with python3Packages; [
    requests
    hello-python
  ];
  meta.description = "an example flox package";
  meta.mainProgram = "flox-consumer-app";

