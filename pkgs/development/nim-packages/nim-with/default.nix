{
  lib,
  nimPackages,
  fetchNimble,
}:
nimPackages.buildNimPackage
rec {
  pname = "with";
  version = "0.5.0";

  src = fetchNimble {
    inherit pname version;
    hash = "sha256-3Cj31lvBHQnfMSOBnNbBdiDXo8bpLGLwfVN3heYBMJU=";
  };

  buildInputs = with nimPackages; [
  ];
}
