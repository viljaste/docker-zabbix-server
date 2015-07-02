class build::zabbix_server_mysql::supervisor {
  file { '/etc/supervisor/conf.d/zabbix_server_mysql.conf':
    ensure => present,
    source => 'puppet:///modules/build/etc/supervisor/conf.d/zabbix_server_mysql.conf',
    mode => 644
  }
}
