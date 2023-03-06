{
  lib,
  nimPackages,
  fetchNimble,
}:
nimPackages.buildNimPackage
rec {
  pname = "chronicles";
  version = "0.10.3";

  src = fetchNimble {
    inherit pname version;
    hash = "sha256-FYrNL7k/scLzq7WkoLbfZF6oGcBTOWtPSjcDfzNQfnA=";
  };

  buildInputs = with nimPackages; [
    json_serialization
  ];
}
