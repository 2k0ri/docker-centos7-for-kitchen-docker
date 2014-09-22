FROM 2k0ri/centos7-systemd
MAINTAINER 2k0ri esc13245@gmail.com

RUN yum install -y openssh-server openssh-clients
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''

CMD ["/sbin/init", "3"]
