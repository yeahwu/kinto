FROM alpine

ENV CONFIG=https://raw.githubusercontent.com/yeahwu/kinto/master/config.json

RUN apk update && apk add --no-cache unzip tor ca-certificates && \
    wget -c https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip && \
    unzip v2ray-linux-64.zip && rm -f v2ray-linux-64.zip && \
    chmod 700 v2ray v2ctl && \
    sed -i "s/c95ef1d4-f3ac-4586-96e9-234a37dda068/${UUID}/g" config.json
    
CMD nohup tor & \
    ./v2ray -config $CONFIG