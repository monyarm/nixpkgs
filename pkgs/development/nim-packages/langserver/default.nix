{
  lib,
  nimPackages,
  fetchgit,
}:
nimPackages.buildNimPackage rec {
  pname = "langserver";
  version = "0.1.0";

  nimBinOnly = true;

  src = fetchgit {
    url = "https://github.com/nim-lang/langserver";
    rev = "dbaff403fa7f785d1b6afeff890dd6f903cb8b49";
    hash = "sha256-WFwPMkkwsu7sLjYpULyXyz4l2fq5BCiQfo2K14S1A1c=";
  };

  buildInputs = with nimPackages; [
    asynctools.yyoncho_nonblocking
    json_rpc
    nim-with
    chronicles
    faststreams
    stew
    json_serialization
    serialization
  ];
}
