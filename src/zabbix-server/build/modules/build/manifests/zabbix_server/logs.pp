class build::zabbix_server::logs {
  file { '/var/log/zabbix.log':
    ensure => link,
    target => '/dev/stdout',
    force => true
  }
}
