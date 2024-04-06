FROM centos:7
WORKDIR /root
RUN yum install -y autoconf gcc-c++ git make
# RUN git clone https://github.com/rhaleblian/build-magick
COPY Makefile .
RUN make

