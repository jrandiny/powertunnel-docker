#!/bin/sh
cd /opt
ln -s /config/* /opt
exec java -jar PowerTunnel.jar -console -start -ip 0.0.0.0