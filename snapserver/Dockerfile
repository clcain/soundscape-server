FROM debian:bookworm

ARG SNAPCAST_VERSION=0.29.0

RUN apt update && apt install -y \
    alsa-utils \
    avahi-daemon \
    libasound2-dev \
    libavahi-client-dev \
    libexpat1-dev \
    libflac-dev \
    libopus-dev \
    libpulse-dev \
    libsoxr-dev \
    libvorbis-dev \
    libvorbisidec-dev \
    wget \
    && apt clean

RUN wget "https://github.com/badaix/snapcast/releases/download/v${SNAPCAST_VERSION}/snapserver_${SNAPCAST_VERSION}-1_$(dpkg --print-architecture)_bookworm.deb" && apt-get install -y "./snapserver_$SNAPCAST_VERSION-1_$(dpkg --print-architecture)_bookworm.deb" && rm "snapserver_${SNAPCAST_VERSION}-1_$(dpkg --print-architecture)_bookworm.deb"

COPY snapserver.conf /etc/
COPY entrypoint.sh /

ENTRYPOINT /entrypoint.sh
