#!/bin/bash

set -x
set -e

# Packages to be added to the Docker image:

apt-get install -y \
	automake \
	g++-5 \
	g++-5-multilib \
	gcc-5 \
	git \
	python3 \
	tree \
	unzip \
	yasm

update-alternatives --install \
	"$(command -v gcc)" gcc "$(command -v gcc-5)" 50
update-alternatives --set gcc \
	"$(command -v gcc-5)"
update-alternatives --install \
	"$(command -v g++)" g++ "$(command -v g++-5)" 50
update-alternatives --set g++ \
	"$(command -v g++-5)"
update-alternatives --install \
	"$(command -v cpp)" cpp-bin "$(command -v cpp-5)" 50
update-alternatives --set cpp-bin \
	"$(command -v cpp-5)"
