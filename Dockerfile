FROM centos:7
RUN yum install -y autoconf gcc-c++ git make
RUN git clone https://github.com/rhaleblian/build-magick
RUN pwd
RUN ls
WORKDIR build-magick
RUN make
