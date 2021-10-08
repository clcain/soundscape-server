# Soundscape Server

A Snapcast server deployment through Docker that outputs syncrhonized audio playback across a TCP/IP network to Snapcast clients on your network. Supports streaming from Airplay and Spotify Connect using a FIFO queue pipe that can be fed by multiple sources.

### Containers

- [Snapcast](https://github.com/badaix/snapcast)
- [shairport-sync](https://github.com/mikebrady/shairport-sync)
- [librespot](https://github.com/librespot-org/librespot)

### Usage

This is built for a Debian 10 system with the latest Docker and docker-compose installed. To use, simply run `docker-compose up` or use the handy script `bash start.sh`. An Airplay destination and a Spotify Connect player should appear on your network. If you experience connection difficulties, ensure that all host firewalls are turned off.

*Note: It will take several minutes to compile librespot on a Raspberry Pi. Please be patient; this added delay applies only to the first run.*

Install [Soundscape Client](https://github.com/clcain/soundscape-client) on your playback devices. Then simply set the value of SOUNDSCAPE_SERVER in the .env file of your playback devices to the hostname or IP address of this machine to connect them to this server.

Alternatively, you can manually install Snapcast client on any device on your network and use the command `snapclient -h <server name or IP>` to connect them to this server.
