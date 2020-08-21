FROM golang:alpine AS builder
RUN apk update && apk add --no-cache git bash wget curl
WORKDIR /go/src/v2ray.com/core
RUN git clone --progress https://github.com/v2fly/v2ray-core.git . && \
    bash ./release/user-package.sh nosource noconf codename=$(git describe --tags) buildname=docker-fly abpathtgz=/tmp/v2ray.tgz

FROM alpine

ENV CONFIG="/v2rayTor.json"

COPY --from=builder /tmp/v2ray.tgz /tmp
COPY torrc.default /torrc.default
COPY v2rayTor.json /v2rayTor.json
COPY start.sh /start.sh
RUN apk update && apk add --no-cache bash tor ca-certificates && \
    mkdir -p /usr/bin/v2ray && \
    tar xvfz /tmp/v2ray.tgz -C /usr/bin/v2ray && \
    chown -hR root /var/lib/tor && \
    chmod +x /start.sh && \
    rm -rf /tmp/v2ray.tgz

CMD ["/start.sh"]
