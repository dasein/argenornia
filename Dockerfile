FROM ubuntu:xenial

RUN  apt-get update \
  && apt-get install -y curl libstdc++6 \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /minecraft

RUN sh -c "$(curl https://raw.githubusercontent.com/cuberite/cuberite/master/easyinstall.sh)" && mkdir /data

ADD run.sh .

ADD settings.ini Server/.

ADD webadmin.ini Server/.

EXPOSE 25565 8080

VOLUME /data

ENTRYPOINT ["./run.sh"]
