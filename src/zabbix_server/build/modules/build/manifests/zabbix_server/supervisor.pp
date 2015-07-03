class build::zabbix_server::supervisor {
  file { '/etc/supervisor/conf.d/zabbix_server.conf':
    ensure => present,
    source => 'puppet:///modules/build/etc/supervisor/conf.d/zabbix_server.conf',
    mode => 644
  }

  file { '/etc/supervisor/conf.d/zabbix_server_stdout.conf':
    ensure => present,
    source => 'puppet:///modules/build/etc/supervisor/conf.d/zabbix_server_stdout.conf',
    mode => 644
  }
}
