# Soundscape Server

A Snapcast server deployment using Docker that outputs syncrhonized audio playback across a TCP/IP network to Snapcast clients on your network.

## Containers

- [Snapcast](https://github.com/badaix/snapcast)

## Usage

This is built for a Debian system with the latest Docker and docker-compose installed. To use, simply run `docker compose up` or use `make up`. If you experience connection difficulties, ensure that all host firewalls are turned off.

Install [Soundscape Client](https://github.com/clcain/soundscape-client) on your playback devices. Then simply set the value of `SNAPSERVER_ADDR` in the .env file of your client devices to the hostname or IP address of this machine to connect them to this server.

## Configuration

All of the configuration paramters for a specific client are stored in the `.env` file.

Parameters include:

| Parameter         | Description                                      |
| ----------------- | ------------------------------------------------ |
| DEVICE_NAME       | The device name as it will appear on the network |
