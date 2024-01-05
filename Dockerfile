FROM centos:latest

USER root
RUN cat /usr/share/zoneinfo/Asia/Jakarta > /etc/localtime
RUN groupadd www-nginx -g 100499; useradd -M -s /sbin/nologin -g 100499 -u 100499 www-nginx; chsh -s /sbin/nologin root
RUN yum -y update; yum -y install epel-release
RUN yum -y install ntpdate vim nano wget git gcc net-tools iproute openssh-clients ntpdate geoip-devel pcre-devel zlib-devel make openssl openssl-devel davfs2 lua-devel
RUN yum -y install nginx

WORKDIR /root

RUN systemctl start nginx
