#!/bin/env bash

docker run --rm --init \
	-v /home/dreamer_:/home/dreamer_ \
	-e HOME=/home/dreamer_ \
	-v /etc/passwd:/etc/passwd:ro \
	-u 1000:1000 \
	-h case \
	-v /tmp:/tmp \
	steam-runtime-amd64-beta /dev/init -sg -- /bin/bash -c "$*"
