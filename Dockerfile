FROM debian:latest

RUN apt-get update && apt-get -y install \
      info \
      man \
      sudo \
      vim

RUN useradd rute -m -s /bin/bash \
    && usermod -G sudo rute \
    && echo 'rute ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/foo_no_passwd

USER rute
WORKDIR /home/rute

CMD [ "/bin/bash" ]
