{
  lib,
  python3Packages,
  fetchFromGitHub
}:

python3Packages.buildPythonApplication rec {
  pname = "symbolator";
  version = "1.0.2";

  # even if project only has setup.py, as this one does.
  # see https://nixos.org/manual/nixpkgs/stable/#buildpythonapplication-function
  pyproject = true;

  src = fetchFromGitHub {
    owner = "leozqi";
    repo = "symbolator";
    rev = "1.0.2";
    hash = "";
  };

  build-system = with python3Packages; [ setuptools ];

  dependencies = [
    hdlparse
  ];
}
