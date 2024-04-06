# build-magick

Builds ImageMagick 7.0.8 in a CentOS 7 container.

    docker buildx build . -t magick
    docker run -d -it --name magick bash
    docker cp magick:/root/magick.tar.gz .

