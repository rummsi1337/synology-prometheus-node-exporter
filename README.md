# Deploy the Prometheus Node Exporter on a Synology Node, with Docker.

## Dependencies
- [Synology Docker](https://www.synology.com/en-global/dsm/packages/Docker) package already installed.
- SSH access to synology.
- Administrator user access.


## Install
```bash
curl -fsSL https://raw.githubusercontent.com/rummsi1337/synology-prometheus-node-exporter/master/setup.sh | sudo sh
```

## Endpoints 
- Node-Exporter `http://<synology ip/hostname>:9100/metrics`
