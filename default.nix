{ lib
, stdenv
, fetchFromGitHub
}:

stdenv.mkDerivation rec {
  pname = "teleprobe";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "embassy-rs";
    repo = "teleprobe";
    rev = "f29415d731b673a74fe1fba516b5f31df1e7cda8";
    hash = "sha256-o3krKZamd/wqDNlMaRpggmzEqi3bnZCc4/g6n1Snv7c=";
  };

  meta = with lib; {
    description = "";
    homepage = "https://github.com/embassy-rs/teleprobe";
    license = with licenses; [ asl20 mit ];
    maintainers = with maintainers; [ ];
    mainProgram = "teleprobe";
    platforms = platforms.all;
  };
}
