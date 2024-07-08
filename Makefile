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

install:
	make -C ImageMagick install

tarball: opt-sgsco-magick.tar.gz

clean:
	make -C ImageMagick clean

.PHONY=default configure install-deps tarball clean


ImageMagick:
	git clone https://github.com/ImageMagick/ImageMagick.git -b 7.0.8-68

opt-sgsco-magick.tar.gz:
	# Dereferencing symlinks so SMB installations work
	tar -h -cvzf ./opt-sgsco-magick.tar.gz /opt/sgsco
