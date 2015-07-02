#!/usr/bin/env bash

puppet apply --modulepath=/src/zabbix_server_mysql/build/modules /src/zabbix_server_mysql/build/build.pp
