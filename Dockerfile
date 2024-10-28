FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y openssh-server curl git  sudo  && \
    mkdir /var/run/sshd && \
    echo 'root:root' | chpasswd && \
    service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
