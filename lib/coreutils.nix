pkgs: name:
  pkgs.runCommand "${name}-only" {} ''
    mkdir -p $out/bin
    ln -s ${pkgs.coreutils}/bin/${name} $out/bin/${name}
  ''
