#!/usr/bin/env bash

export GIT_SSH_COMMAND="ssh -F /dev/null"

curl -O https://raw.githubusercontent.com/pagedMov/lash/refs/heads/master/Cargo.lock
NEW_SRC=$(fetchfromgh pagedMov/lash)

REV_SHORT=$(git ls-remote git@github.com:pagedMov/lash.git HEAD | awk '{print substr($1, 1, 7)}')
CUR_TAG=$(git ls-remote --tags git@github.com:pagedMov/lash.git | tail -n 2 | head -n 1 | cut -f2 | cut -d'/' -f3)
NEW_VER="${CUR_TAG}_$REV_SHORT"

cat <<EOF
{ pkgs ? import <nixpkgs> {} }:

pkgs.rustPlatform.buildRustPackage rec {
				pname = "lash";
				version = "$NEW_VER";

				$NEW_SRC

				doCheck = false; # TODO: Find a way to make tests work

				cargoLock.lockFile = ./Cargo.lock;

				passthru = {
					shellPath = "/bin/lash";
				};
			}
EOF
