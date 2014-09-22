FROM 2k0ri/centos7-systemd
MAINTAINER 2k0ri esc13245@gmail.com

RUN yum install -y openssh-server openssh-clients
RUN sed -ri -e 's/UsePAM yes/#UsePAM yes/' -e 's/#UsePAM no/UsePAM no/' /etc/ssh/sshd_config

CMD ["/sbin/init", "3"]
