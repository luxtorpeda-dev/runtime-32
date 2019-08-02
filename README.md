Scripts for maintaining Steam Runtime docker image

You don't need to build it yourself to use it; I upload images to
https://hub.docker.com/u/luxtorpeda

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
        --beta amd64 \
        --extra-bootstrap=luxtorpeda-bootstrap.sh \
	steam-runtime-amd64-beta

## Upload image

Example process of uploading your new image:

    $ docker login

    $ docker tag afd465dc92b8 luxtorpeda/steam-runtime-amd64-beta:lux-190802-1

    $ docker push luxtorpeda/steam-runtime-amd64-beta:lux-190802-1

and then:

    $ docker push luxtorpeda/steam-runtime-amd64-beta:lux-190802-1

and remember to run:

    $ docker push luxtorpeda/steam-runtime-amd64-beta:lux-190802-1

repeat until docker stops failing…
