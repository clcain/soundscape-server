FROM debian:buster

RUN apt-get update && apt-get install -y \
    shairport-sync \
    && apt-get clean

COPY start.sh /

CMD /start.sh
