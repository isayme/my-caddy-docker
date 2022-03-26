# My Custom Caddy Docker Image

[![Docker Image Version (latest semver)](https://img.shields.io/docker/v/isayme/caddy?sort=semver&style=flat-square)](https://hub.docker.com/r/isayme/caddy)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/isayme/caddy?sort=semver&style=flat-square)
![Docker Pulls](https://img.shields.io/docker/pulls/isayme/caddy?style=flat-square)

## Added Modules

- https://github.com/abiosoft/caddy-yaml
- https://github.com/caddy-dns/cloudflare
- https://github.com/mholt/caddy-webdav
- https://github.com/caddyserver/forwardproxy

# Docker Compose

```
version: '3'

services:
  caddy:
    container_name: caddy
    image: isayme/caddy:2-alpine
    ports:
      # http port
      - '80:80'
      # https port
      - '443:443'
      # quic/http3 port
      - '443:443/udp'
    volumes:
      # caddy config file
      - ./config/caddy/Caddyfile:/etc/caddy/Caddyfile
      # tls cert/key will save here
      - ./data/caddy:/data
    restart: unless-stopped
```
