{
  lib,
  nimPackages,
  fetchNimble,
}:
nimPackages.buildNimPackage
rec {
  pname = "json_serialization";
  version = "0.1.0";

  src = fetchNimble {
    inherit pname version;
    hash = "sha256-lgrAE1fW0TRB5S9fSNuVPOcP9ORhovCJnJHHrS+mXiE=";
  };

  buildInputs = with nimPackages; [
    stew
    serialization
  ];
}
