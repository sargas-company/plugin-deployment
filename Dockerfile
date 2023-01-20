FROM debian:stable-slim

RUN apt-get update \
    && apt-get install -y subversion rsync git \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /script.sh

ENTRYPOINT ["/script.sh"]