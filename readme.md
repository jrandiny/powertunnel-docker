# PowerTunnel Docker

This is a simple docker image for [PowerTunnel](https://github.com/krlvm/PowerTunnel). PowerTunnel is a proxy server which allow bypassing of deep packet inspection some ISP use to block internet access.

## Example Usage
```
docker build -t jrandiny/powertunnel .
docker run -p 8085:8085 -v `pwd`/sample-config:/config docker.pkg.github.com/jrandiny/powertunnel-docker/powertunnel:latest
```

Then configure your browser proxy configuration to `localhost:8085`

## Configuration

Please mount a folder with the required configuration on `/config`. Example configuration for bypassing Netflix DPI (From [bebasid](https://github.com/bebasid/bebasid)) is provided in `sample-config` folder. Please don't change the internal port and ip configuration, instead use docker port binding to change port number.