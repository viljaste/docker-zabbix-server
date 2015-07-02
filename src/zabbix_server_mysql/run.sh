#!/usr/bin/env bash

puppet apply --modulepath=/src/zabbix_server_mysql/run/modules /src/zabbix_server_mysql/run/run.pp

supervisord -c /etc/supervisor/supervisord.conf
