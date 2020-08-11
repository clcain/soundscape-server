FROM debian:buster

RUN apt-get update && apt-get install -y \
    build-essential \
    libsdl2-dev \
    wget \
    && apt-get clean

RUN wget -O - https://sh.rustup.rs | sh -s -- -y
RUN . $HOME/.cargo/env && cargo install librespot && ln -s /root/.cargo/bin/librespot /usr/local/bin/

CMD librespot --name "$DEVICE_NAME" --backend pipe --device /var/cache/snapcast/snapfifo --cache /var/cache/librespot --enable-volume-normalisation --volume-ctrl linear --bitrate 320 --initial-volume=75
