{
  lib,
  nimPackages,
  fetchNimble,
}:
nimPackages.buildNimPackage
rec {
  pname = "faststreams";
  version = "0.3.0";

  src = fetchNimble {
    inherit pname version;
    hash = "sha256-qVwGLXlhJXhdyXpFpujFrLf0tVQIbOzfqg1ZAM+U2B4=";
  };

  buildInputs = with nimPackages; [
    stew
  ];
}
