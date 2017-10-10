FROM centos:7
MAINTAINER Lindani Phiri

RUN yum update -y && \
    yum install -y golang openscap-scanner && \
    yum clean all
