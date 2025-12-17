{ stdenvNoCC
, fetchurl
}:

stdenvNoCC.mkDerivation {
  pname = "probe-rs-tools-udev-rules";
  version = "unstable-2025-12-17";

  src = fetchurl {
    url = "https://probe.rs/files/69-probe-rs.rules";
    hash = "sha256-yjxld5ebm2jpfyzkw+vngBfHu5Nfh2ioLUKQQDY4KYo=";
  };

  dontUnpack = true;

  installPhase = ''
    install -Dm444 $src $out/lib/udev/rules.d/69-probe-rs.rules
  '';
}

