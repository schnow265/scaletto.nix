{ pkgs }:

package: name:
  pkgs.runCommand "${name}-only" {} ''
    mkdir -p $out/bin
    ln -s ${package}/bin/${name} $out/bin/${name}
  ''
