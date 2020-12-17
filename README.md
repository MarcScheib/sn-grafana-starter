# SN Grafana Starter

This repository contains a Docker Compose file for quickly setting up
Grafana with the SN datasource.

> **_NOTE:_** You need to have Docker installed on your machine and you
> require access to the SN Datasource plugin.

## Getting Started
Simply execute the following steps to get everything up and running.

1. Clone this Repository: `https://github.com/MarcScheib/sn-grafana-starter.git`
2. Switch to the directory: `cd sn-grafana-starter`
3. Run the install.sh script to get the SN Grafana Plugin: `sh install.sh --username=<your_username> --password=<your_password>`
4. Start the container: `docker-compose up -d`
5. Grafana is now available via http://localhost:3000


You can initially sign now with user `admin` and password `admin`. For additional information, check the PDF documentation for the SN Datasource in the plugins dir.

> **_NOTE:_** When adding the Datasource, use your SN Server IP address.