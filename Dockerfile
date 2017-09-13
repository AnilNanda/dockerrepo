FROM 137112412989.dkr.ecr.us-east-1.amazonaws.com/amazonlinux:2016.09
#FROM centos:7
MAINTAINER CloudOps Version 1.0

RUN yum install -y httpd

CMD /usr/sbin/httpd -D FOREGROUND
