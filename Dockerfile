FROM ubuntu
# FROM linuxserver/wireguard:latest

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/ngoduykhanh/wireguard-ui/releases/download/v0.3.7/wireguard-ui-v0.3.7-linux-arm64.tar.gz && \
    tar -xvf wireguard-ui-v0.3.7-linux-arm64.tar.gz

CMD ["./wireguard-ui"]
