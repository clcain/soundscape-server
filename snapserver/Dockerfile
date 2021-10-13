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

RUN wget "https://github.com/badaix/snapcast/releases/download/v${SNAPCAST_VERSION}/snapserver_${SNAPCAST_VERSION}-1_$(dpkg --print-architecture).deb" && apt-get install -y "./snapserver_$SNAPCAST_VERSION-1_$(dpkg --print-architecture).deb" && rm "snapserver_${SNAPCAST_VERSION}-1_$(dpkg --print-architecture).deb"

COPY snapserver.conf /etc/snapserver.conf
COPY start.sh /

CMD /start.sh
