#!/usr/bin/env sh

DOCKER_VOLUME="/volume1/docker"
NODE_EXPORTER_ROOT="${DOCKER_VOLUME}/node-exporter"

[ ! -d ${NODE_EXPORTER_ROOT} ] && mkdir -p ${NODE_EXPORTER_ROOT} \
&& echo "folder created ${NODE_EXPORTER_ROOT}"

curl -fsS -H 'Cache-Control: no-cache' https://raw.githubusercontent.com/rummsi1337/synology-prometheus-node-exporter/master/docker-compose.yml > ${NODE_EXPORTER_ROOT}/docker-compose.yml
echo "docker-compose file created ${NODE_EXPORTER_ROOT}/docker-compose.yml"

docker-compose -f ${NODE_EXPORTER_ROOT}/docker-compose.yml up -d

echo "
#############################################
Node-Exporter http://`hostname`:9100/metrics
#############################################
"
