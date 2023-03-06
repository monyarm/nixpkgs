{
  lib,
  nimPackages,
  fetchgit,
}:
nimPackages.buildNimPackage
rec {
  pname = "json_rpc";
  version = "0.0.2";

  src = fetchgit {
    url = "https://github.com/yyoncho/nim-json-rpc";
    rev = "38885260934d36ce6955a0599af1578cadaf65ec";
    hash = "sha256-eyPro3uuIZHij59dERTODt5uOtuds0V0QeQAC4K8qMs=";
  };
}
