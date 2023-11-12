# Soundscape Server

A Snapcast server deployment through Docker that outputs syncrhonized audio playback across a TCP/IP network to Snapcast clients on your network. It supports streaming from Airplay and Spotify Connect using a FIFO queue pipe that can be fed by multiple sources.

## Containers

- [Snapcast](https://github.com/badaix/snapcast)
- [shairport-sync](https://github.com/mikebrady/shairport-sync)
- [librespot](https://github.com/librespot-org/librespot)

## Usage

This is built for a Debian system with the latest Docker and docker-compose installed. To use, simply run `docker-compose up` or use `make up`. An Airplay destination and a Spotify Connect player should appear on your network. If you experience connection difficulties, ensure that all host firewalls are turned off.

Install [Soundscape Client](https://github.com/clcain/soundscape-client) on your playback devices. Then simply set the value of `SOUNDSCAPE_SERVER` in the .env file of your playback devices to the hostname or IP address of this machine to connect them to this server.

## Configuration

All of the configuration paramters for a specific client are stored in the `.env` file.

Parameters include:

| Parameter         | Description                                      |
| ----------------- | ------------------------------------------------ |
| DEVICE_NAME       | The device name as it will appear on the network |
| SPOTIFY_USERNAME  | Your Spotify username                            |
| SPOTIFY_PASSWORD  | Your Spotify password                            |
