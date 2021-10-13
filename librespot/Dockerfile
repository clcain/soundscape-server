FROM debian:buster

RUN apt-get update && apt-get install -y \
    build-essential \
    libasound2-dev \
    libpulse-dev \
    pkg-config \
    wget \
    && apt-get clean

RUN wget -O - https://sh.rustup.rs | sh -s -- -y
RUN . $HOME/.cargo/env && cargo install librespot --features "alsa-backend pulseaudio-backend" && ln -s /root/.cargo/bin/librespot /usr/local/bin/

COPY start.sh /

CMD /start.sh
