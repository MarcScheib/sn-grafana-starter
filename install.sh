#!/bin/bash

for ARGUMENT in "$@"
do
  KEY=$(echo $ARGUMENT | cut -f1 -d=)
  VALUE=$(echo $ARGUMENT | cut -f2 -d=)

  case "$KEY" in
    --username)
        USERNAME=($VALUE) ;;
    --password)
        PASSWORD=($VALUE) ;;
    *)
  esac
done

echo "USERNAME = $USERNAME"
echo "PASSSORD = $PASSWORD"

curl -u "$USERNAME:$PASSWORD" https://cloud.infosim.net/remote.php/webdav/StableNet%20Data%20Source%20for%20Grafana/stablenet-grafana-plugin.zip --output stablenet-grafana-plugin.zip
rm -rf ./grafana-plugins/stablenet-grafana-plugin
unzip stablenet-grafana-plugin.zip -d ./grafana-plugins
rm stablenet-grafana-plugin.zip
