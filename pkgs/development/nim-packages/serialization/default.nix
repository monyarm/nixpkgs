{
  lib,
  nimPackages,
  fetchNimble,
}:
nimPackages.buildNimPackage
rec {
  pname = "serialization";
  version = "0.1.0";

  src = fetchNimble {
    inherit pname version;
    hash = "sha256-50OgYiVVYKWLIXn6IxDGR9yEhxvnpOgQJVKzAQACLaA=";
  };

  buildInputs = with nimPackages; [
    stew
    faststreams
  ];
}
