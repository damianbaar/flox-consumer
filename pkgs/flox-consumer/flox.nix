rec {
  # flox environment configuation
  #
  # flox.nix options: https://floxdev.com/docs/reference/flox-nix-config
  # Getting started with flox: https://floxdev.com/docs
  # Get help: https://discourse.floxdev.com
  #
  # Happy hacking!

  # packages.nixpkgs-flox.black = {};

  environmentVariables.PIP_DISABLE_PIP_VERSION_CHECK = "1";
  # echo ${packages.damianbaar.flox-simple-project.stability.unstable}
  shell.hook = ''
  '';
  packages.damianbaar.flox-simple-project = {
    version = "0.0.3";stability="unstable";};
}

