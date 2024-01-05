FROM centos:7

USER root
RUN cat /usr/share/zoneinfo/Asia/Jakarta > /etc/localtime
RUN yum -y update
RUN yum -y install ntpdate vim nano wget git gcc net-tools iproute openssh-clients ntpdate geoip-devel pcre-devel zlib-devel make openssl openssl-devel davfs2 lua-devel
RUN yum -y install nginx

WORKDIR /root

RUN systemctl start nginx
