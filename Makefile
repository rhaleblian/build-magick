PREFIX := /opt/sgsco

default: configure
	make -C ImageMagick -j 4

configure: ImageMagick
	( \
	cd ImageMagick \
	&& ./configure \
	--disable-hdri \
	--prefix=${PREFIX} \
	)

install-deps:
	yum install -y git make gcc-c++

install:
	make -C ImageMagick install

clean:
	make -C ImageMagick clean

.PHONY=default configure install-deps clean


ImageMagick:
	git clone https://github.com/ImageMagick/ImageMagick.git -b 7.0.8-68
	#(cd ImageMagick && git checkout 7.0.8-68)

