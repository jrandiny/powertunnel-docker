FROM alpine:latest

# Install deependencies
RUN apk add --no-cache openjdk11-jre wget

WORKDIR /opt

RUN wget https://github.com/krlvm/PowerTunnel/releases/latest/download/PowerTunnel.jar

VOLUME /config

# Link all config
COPY entry.sh /usr/local/bin/entry.sh

CMD [ "entry.sh" ]