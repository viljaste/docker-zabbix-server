class run::zabbix_server {
  file { '/etc/zabbix/zabbix_server.conf':
    ensure => present,
    content => template('run/zabbix_server.conf.erb'),
    mode => 644
  }

  include run::seed_mysql
}
