FROM alpine:latest

RUN apk add --no-cache python3 py3-pip && \
    pip install git+https://github.com/shadowsocks/shadowsocks.git

CMD ssserver -p 443 -k Martin651 -m aes-256-gcm
