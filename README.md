Scripts for maintaining Steam Runtime docker image

You don't need to build it yourself to use it; I upload images to
https://hub.docker.com/r/luxtorpedadev/runtime-32

TODO: document how to download it locally

TODO: turn this into proper documentation
In the meantime I documented it once already for Proton on
[Proton wiki](https://github.com/ValveSoftware/Proton/wiki/Build-instructions-(Fedora)).


## Basic Docker usage

To list docker images you have available:

    $ docker images

## Steam Runtime

    $ git clone git@github.com:ValveSoftware/steam-runtime.git

## Build new Docker image

    $ ./path_to_steam_runtime/setup_docker.sh \
        --beta i386 \
        --extra-bootstrap=luxtorpeda-bootstrap.sh \
	runtime

## Upload image

Example process of uploading your new image:

    $ docker login

    $ docker tag afd465dc92b8 luxtorpedadev/runtime-32:7

    $ docker push luxtorpedadev/runtime-32:7


## Cleanup

To remove old images:

    $ docker image rm <name>
