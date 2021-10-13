FROM debian:buster

RUN apt-get update && apt-get install -y \
    shairport-sync \
    && apt-get clean

COPY shairport-sync.conf /etc/
COPY start.sh /

CMD /start.sh
