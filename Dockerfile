FROM rockylinux:9
WORKDIR /root
RUN yum install -y autoconf gcc-c++ git make zip
COPY Makefile .
RUN make
RUN make install
RUN make tarball
