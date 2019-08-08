#!/bin/env bash

# Run a command in Steam Runtime Docker image
#
# usage example: ./srd-cmd.sh gcc --version

readonly docker_image=steam-runtime-amd64-beta:latest

set -x

time docker run --rm --init \
	--hostname="$HOSTNAME" \
	--volume="$HOME:$HOME" \
	--volume=/etc/passwd:/etc/passwd:ro \
	--volume=/tmp:/tmp \
	--env="HOME=$HOME" \
	--user=$UID:$UID \
	--workdir="$PWD" \
	"$docker_image" \
	/dev/init -sg -- /bin/bash -c "$*"
