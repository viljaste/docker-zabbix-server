class build::zabbix_server_mysql {
  require build::zabbix_server_mysql::packages
  require build::zabbix_server_mysql::supervisor
}
