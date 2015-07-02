class build::zabbix_server_mysql::packages {
  file { '/tmp/zabbix-server-mysql_2.2.9-1+wheezy_amd64.deb':
    ensure => present,
    source => 'puppet:///modules/build/tmp/zabbix-server-mysql_2.2.9-1+wheezy_amd64.deb'
  }

  bash_exec { 'cd /tmp && dpkg -i zabbix-server-mysql_2.2.9-1+wheezy_amd64.deb':
    require => File['/tmp/zabbix-server-mysql_2.2.9-1+wheezy_amd64.deb']
  }
}
