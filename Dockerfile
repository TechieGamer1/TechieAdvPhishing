FROM alpine:latest
LABEL MAINTAINER="https://github.com/TechieGamer1/TechieAdvPhishing"
WORKDIR /TechieAdvPhishing/
ADD . /TechieAdvPhishing
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./TechieAdvPhishing.sh"
