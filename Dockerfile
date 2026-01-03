FROM index.docker.io/library/caddy:2-builder AS builder

RUN xcaddy build --with github.com/caddy-dns/gandi

FROM index.docker.io/library/caddy:2

COPY Caddyfile /etc/caddy/Caddyfile

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

ARG BUILD_DATE
ARG VERSION

LABEL org.opencontainers.image.title="caddy-homelab"
LABEL org.opencontainers.image.description="Custom Caddy container with Gandi support for SSL certs"
LABEL org.opencontainers.image.version="${VERSION}"
LABEL org.opencontainers.image.created="${BUILD_DATE}"
LABEL org.opencontainers.image.authors="kevinisageek"
LABEL org.opencontainers.image.licenses="WTFPL"
LABEL maintainer="kevinisageek"

EXPOSE 80
EXPOSE 443
EXPOSE 443/udp
