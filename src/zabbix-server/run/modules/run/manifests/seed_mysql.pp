class run::seed_mysql {
  file { '/usr/local/bin/seed_mysql':
    ensure => present,
    content => template('run/seed_mysql.sh.erb'),
    mode => 755
  }

  bash_exec { '/usr/local/bin/seed_mysql':
    timeout => 0,
    require => File['/usr/local/bin/seed_mysql']
  }
}
