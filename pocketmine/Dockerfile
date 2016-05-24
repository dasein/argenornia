FROM ubuntu:xenial

RUN mkdir /pocketmine

WORKDIR /pocketmine

RUN apt-get update && apt-get install -y curl wget libltdl7 net-tools

RUN curl http://get.pocketmine.net/ | bash -s - -r -v development

RUN wget -q -O- https://dl.bintray.com/pocketmine/PocketMine/PHP_7.0.6_x86-64_Linux.tar.gz |  tar -xzv

RUN wget -q -O- https://dl.bintray.com/pocketmine/PocketMine/PocketMine-MP_1.6dev-25_e2d079a7_API-2.0.0.phar > PocketMine-MP.phar

ADD pocketmine.yml server.properties ./

EXPOSE 19132

CMD ["./start.sh", "--no-wizard"]
