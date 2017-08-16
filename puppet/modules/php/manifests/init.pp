# vagrant/puppet/modules/php/manifests/init.pp
class php {

  # Install the php5-fpm and php5-cli packages
  package { ['php5-fpm',
             'php5-cli',
	     'php5-curl']:
    ensure => present,
    require => Exec['apt-get update'],
  }
  # Add a fpm tcp listener
  file { 'www.conf':
    path => '/etc/php5/fpm/pool.d/www.conf',
    ensure => file,
    require => Package['php5-fpm'],
      source => 'puppet:///modules/php/www.conf',
    notify => Service['php5-fpm'],
  }

  # Make sure php5-fpm is running
  service { 'php5-fpm':
    ensure => running,
    require => Package['php5-fpm'],
  }
}
