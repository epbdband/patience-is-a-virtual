json-srcs := $(wildcard *-src.json)

.PHONY: ${json-srcs}

all: ${json-srcs}

nixpkgs-branch ?= nixos-19.03

nixpkgs-src.json:
	@ nix-prefetch-github \
		NixOS nixpkgs-channels \
		--rev refs/heads/${nixpkgs-branch} \
	>$@

snippets-src.json:
	@ nix-prefetch-github yurrriq snippets >$@
