#!/usr/bin/env bash

puppet apply --modulepath=/src/zabbix_server_mysql/clean/modules /src/zabbix_server_mysql/clean/clean.pp
