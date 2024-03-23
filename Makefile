PREFIX := /opt/sgsco

default: configure
	make -j 4 -C ImageMagick

configure: /usr/bin/autoconf ImageMagick
	( \
	cd ImageMagick \
	&& ./configure \
	--disable-hdri \
	--prefix=${PREFIX} \
	)

clean:
	make -C ImageMagick clean

ImageMagick:
	git clone https://github.com/ImageMagick/ImageMagick.git
	(cd ImageMagick && git checkout 7.0.8-68)

/usr/bin/autoconf:
	sudo yum install autoconf

.PHONY=default configure clean
