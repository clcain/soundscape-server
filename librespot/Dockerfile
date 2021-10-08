FROM debian:buster

RUN apt-get update && apt-get install -y \
    build-essential \
    libsdl2-dev \
    wget \
    && apt-get clean

RUN wget -O - https://sh.rustup.rs | sh -s -- -y
RUN . $HOME/.cargo/env && cargo install librespot && ln -s /root/.cargo/bin/librespot /usr/local/bin/

COPY start.sh /

CMD /start.sh
