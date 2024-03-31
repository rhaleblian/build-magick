# build-magick

Build ImageMagick 7.0.8 on CentOS 7.

    make
    sudo make install

With Docker,

    docker buildx build . -t build-magick
    docker run build-magick
