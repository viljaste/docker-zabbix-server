# docker-zabbix-server

A [Docker](https://docker.com/) image for [Zabbix](http://www.zabbix.com/) server.

## Run the container

Using the `docker` command:

    CONTAINER="zabbixserver" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      -p 10051:10051 \
      -d \
      viljaste/zabbix_server:2.2

Using the `docker-compose` command

    TMP="$(mktemp -d)" \
      && GIT_SSL_NO_VERIFY=true git clone https://git.beyondcloud.io/viljaste/docker-zabbix-server.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout 2.2 \
      && sudo docker-compose up

## Build the image

    TMP="$(mktemp -d)" \
      && GIT_SSL_NO_VERIFY=true git clone https://git.beyondcloud.io/viljaste/docker-zabbix-server.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout 2.2 \
      && sudo docker build -t viljaste/zabbix_server:2.2 . \
      && cd -
      
## License

**MIT**
