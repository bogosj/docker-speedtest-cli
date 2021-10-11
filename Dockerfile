FROM debian:bullseye-slim

RUN apt update
RUN yes | apt install curl

RUN curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash

RUN apt install speedtest

ENTRYPOINT ["/usr/bin/speedtest"]