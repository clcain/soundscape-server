# snapcast-media-server

A Snapcast server deployment through Docker that outputs syncrhonized audio playback across a TCP/IP network to Snapcast clients (such as Raspberry Pis running [Balena Sound](https://github.com/balenalabs/balena-sound)). Supports streaming from Airplay and Spotify Connect using a FIFO queue pipe that can be fed by multiple sources.

### Containers

- [Snapcast](https://github.com/badaix/snapcast)
- [shairport-sync](https://github.com/mikebrady/shairport-sync)
- [librespot](https://github.com/librespot-org/librespot)

### Usage

This is built for a Debian 10 system with the latest Docker and docker-compose installed. To use, simply run `docker-compose up` or use the handy script `bash start.sh`. An Airplay destination and a Spotify Connect player should appear on your network. Ensure that all host firewalls are turned off.

On your playback devices, install Snapcast snapclient and run `snapclient -h [host_ip_address]` to connect them to this server.
