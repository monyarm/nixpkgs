{
  lib,
  buildNimPackage,
  fetchFromGitHub,
  astpatternmatching,
}:
buildNimPackage rec {
  pname = "asynctools";
  version = "unstable-2021-07-06";

  src = fetchFromGitHub {
    owner = "cheatfate";
    repo = "asynctools";
    rev = "84ced6d002789567f2396c75800ffd6dff2866f7";
    hash = "sha256-mrO+WeSzCBclqC2UNCY+IIv7Gs8EdTDaTeSgXy3TgNM=";
  };

  meta = with lib; {
    description = "Various asynchronous tools for Nim language";
    homepage = "https://github.com/cheatfate/asynctools";
    license = licenses.mit;
    maintainers = [maintainers.marsam];
  };

  yyoncho_nonblocking = buildNimPackage rec {
    inherit pname meta;
    version = "non-blocking-2022-05-17";
    src = fetchFromGitHub {
      owner = "yyoncho";
      repo = "asynctools";
      rev = "f1ad7289ff38f3b1c1987307845de373fc9af499";
      hash = "sha256-bV37Q4X65tflvEUiG3OqNKWjI/R6JQ5O5Q6vvMcU2cc=";
    };
  };
}
