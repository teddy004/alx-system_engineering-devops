# Script that setup a nginx web server on our server + redirection + header
exec { 'update':
  command => '/usr/bin/apt-get update',
}

package { 'nginx':
  ensure  => installed,
  name    => 'nginx',
  require => Exec['update'],
}

file { '/var/www/html/index.html':
  ensure  => 'present',
  path    => '/var/www/html/index.html',
  content => 'Holberton School',
  require => Package['nginx'],
}

file_line { 'redirect_me':
  ensure  => 'present',
  path    => '/etc/nginx/sites-available/default',
  after   => 'listen 80 default_server;',
  line    => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
  require => Package['nginx'],
}

file_line { 'addHeader':
  ensure  => 'present',
  path    => '/etc/nginx/sites-available/default',
  after   => 'listen 80 default_server;',
  line    => 'add_header X-Served-By $hostname;',
  require => Package['nginx'],
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
