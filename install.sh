#!/bin/bash

for pkg in */ ; do
	# exclude archive/
    [ "$pkg" = "archive/" ] && continue
    stow "$pkg"
done
