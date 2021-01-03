FROM ubuntu:20.04

RUN  apt-get update \
  && apt-get install -y curl libstdc++6 gettext-base \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /minecraft

RUN curl -sSfL https://download.cuberite.org | sh && mkdir /data

ADD settings.ini webadmin.ini /minecraft/

EXPOSE 25565 8080

VOLUME /data

CMD ./Cuberite
