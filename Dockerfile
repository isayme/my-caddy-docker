FROM caddy:2-builder-alpine AS builder

RUN xcaddy build \
  --with github.com/abiosoft/caddy-yaml \
  --with github.com/mholt/caddy-webdav \
  --with github.com/caddy-dns/cloudflare \
  --with github.com/caddyserver/forwardproxy@caddy2

FROM caddy:2-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
