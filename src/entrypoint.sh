#!/usr/bin/env bash

case "${1}" in
  build)
    /bin/su - root -mc "apt-get update && /src/zabbix-server/build.sh && /src/zabbix-server/clean.sh"
    ;;
  run)
    /bin/su - root -mc "source /src/zabbix-server/variables.sh && /src/zabbix-server/run.sh"
    ;;
esac
