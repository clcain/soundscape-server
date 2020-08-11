FROM debian:buster

RUN apt-get update && apt-get install -y \
    shairport-sync \
    && apt-get clean

CMD shairport-sync -a "$DEVICE_NAME" -o pipe -- /var/cache/snapcast/snapfifo
