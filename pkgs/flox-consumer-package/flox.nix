{
  # flox environment configuation
  #
  # flox.nix options: https://floxdev.com/docs/reference/flox-nix-config
  # Getting started with flox: https://floxdev.com/docs
  # Get help: https://discourse.floxdev.com
  #
  # Happy hacking!

  # packages.nixpkgs-flox.black = {};

  environmentVariables.PIP_DISABLE_PIP_VERSION_CHECK = "1";
  packages.db-flox-simple-lib.flox-simple-lib = {stability="unstable"; version="0.0.10";};
}

