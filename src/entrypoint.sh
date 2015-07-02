#!/usr/bin/env bash

case "${1}" in
  build)
    /bin/su - root -mc "apt-get update && /src/zabbix_server_mysql/build.sh && /src/zabbix_server_mysql/clean.sh"
    ;;
  run)
    /bin/su - root -mc "source /src/zabbix_server_mysql/variables.sh && /src/zabbix_server_mysql/run.sh"
    ;;
esac
