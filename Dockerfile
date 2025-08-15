FROM alpine:latest

RUN apk add --no-cache python3 py3-pip git && \
    pip install git+https://github.com/shadowsocks/shadowsocks.git --break-system-packages
    
CMD ssserver -p 443 -k Martin651 -m aes-256-gcm
