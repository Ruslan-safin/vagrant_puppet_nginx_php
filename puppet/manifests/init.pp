exec { 'apt-get update':
  path => '/usr/bin',
}

package { 'nano':
  ensure => present,
}

file { '/var/www/':
  ensure => 'directory',
}
include nginx, php

