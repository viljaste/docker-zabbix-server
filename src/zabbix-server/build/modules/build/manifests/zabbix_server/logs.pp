class build::zabbix_server::logs {
  file { '/var/log/zabbix/stdout.log':
    ensure => link,
    target => '/dev/stdout',
    force => true
  }
}
