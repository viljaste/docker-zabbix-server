#!/usr/bin/env bash

puppet apply --modulepath=/src/zabbix-server/run/modules /src/zabbix-server/run/run.pp

supervisord -c /etc/supervisor/supervisord.conf
