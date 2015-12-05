# docker-zabbix-server

A Docker image for [Zabbix](http://www.zabbix.com/) server. Also supports connecting to OpenVPN server.

This project is part of the [Dockerized Drupal](https://dockerizedrupal.com/) initiative.

## Run the container

    CONTAINER="mysql-data" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      -v /mysql \
      --entrypoint /bin/echo \
      dockerizedrupal/mysql:1.1.0 "Data-only container for MySQL."

    CONTAINER="mysql" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      --volumes-from mysql-data \
      -d \
      dockerizedrupal/mysql:1.1.0

    CONTAINER="zabbix-server" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      -p 10051:10051 \
      --link mysql:mysql \
      -d \
      dockerizedrupal/zabbix-server:0.1.8

## Build the image

    TMP="$(mktemp -d)" \
      && git clone https://github.com/dockerizedrupal/docker-zabbix-server.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout 0.1.8 \
      && sudo docker build -t dockerizedrupal/zabbix-server:0.1.8 . \
      && cd -

## Changing the container behaviour on runtime through environment variables

    // TODO

## License

**MIT**
