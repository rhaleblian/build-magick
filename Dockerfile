FROM centos:7
RUN yum install -y autoconf make gcc-c++
RUN make
