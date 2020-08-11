FROM debian:buster

ARG SNAPCAST_VERSION=0.20.0

RUN apt-get update && apt-get install -y \
    libavahi-client3 \
    libavahi-common3 \
    libflac8 \
    libogg0 \
    libopus0 \
    libvorbis0a \
    libvorbisenc2 \
    wget && \
    apt-get clean

RUN wget "https://github.com/badaix/snapcast/releases/download/v${SNAPCAST_VERSION}/snapserver_${SNAPCAST_VERSION}-1_amd64.deb" && apt-get install -y "./snapserver_$SNAPCAST_VERSION-1_amd64.deb" && rm "snapserver_${SNAPCAST_VERSION}-1_amd64.deb"

COPY snapserver.conf /etc/snapserver.conf

CMD snapserver
