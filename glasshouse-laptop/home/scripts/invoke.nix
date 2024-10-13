{ self, pkgs }:

{
	invoke = pkgs.writeShellScriptBin "invoke" (''
#!/run/current-system/sw/bin/bash

nix run nixpkgs#$"@" 
	'');
}