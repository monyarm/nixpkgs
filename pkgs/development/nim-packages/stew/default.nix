{
  lib,
  buildNimPackage,
  fetchFromGitHub,
  snappy,
}:
buildNimPackage rec {
  pname = "stew";
  version = "0.1.0";
  src = fetchFromGitHub {
    owner = "status-im";
    repo = "nim-${pname}";
    rev = "e18f5a62af2ade7a1fd1d39635d4e04d944def08";
    hash = "sha256-MwXvXxBrtGOfgTUPniXNT23meWtCPTSnENE+YRkrZNA=";
  };
  doCheck = false;
  meta = with lib;
    src.meta
    // {
      description = "Backports, standard library candidates and small utilities that don't yet deserve their own repository";
      license = [lib.licenses.asl20];
      maintainers = [maintainers.ehmry];
    };
}
