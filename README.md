# docker-zabbix-server

A Docker image for [Zabbix](http://www.zabbix.com/) server.

This project is part of the [Dockerized Drupal](https://dockerizedrupal.com/) initiative.

## Run the container

    CONTAINER="zabbix-server" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      -p 10051:10051 \
      -e TIMEZONE="Etc/UTC" \
      -e MYSQL_HOST="" \
      -e MYSQL_PORT="3306" \
      -e MYSQL_USERNAME="container" \
      -e MYSQL_PASSWORD="container" \
      -d \
      dockerizedrupal/zabbix-server:0.1.0

## Build the image

    TMP="$(mktemp -d)" \
      && git clone https://github.com/dockerizedrupal/docker-zabbix-server.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout 0.1.0 \
      && sudo docker build -t dockerizedrupal/zabbix-server:0.1.0 . \
      && cd -

## Changing the container behaviour on runtime through environment variables

    // TODO

## License

**MIT**
