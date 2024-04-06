FROM centos:7
WORKDIR /root
RUN yum install -y autoconf gcc-c++ git make zip
COPY Makefile .
RUN make
RUN make install
# Dereferencing symlinks so SMB installations work
RUN tar -h -cvzf magick.tar.gz /opt/sgsco

