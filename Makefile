songs := $(wildcard songs/*)

all:
	@ nix-build
	@ mkdir -p docs
	@ cp -f result/*.pdf docs/
