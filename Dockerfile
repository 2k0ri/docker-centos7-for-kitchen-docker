FROM 2k0ri/centos7-systemd
MAINTAINER 2k0ri esc13245@gmail.com

RUN yum install -y python-setuptools
RUN easy_install supervisor

ADD supervisord.conf /etc/supervisord.conf
