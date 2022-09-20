# This manifest installs ngix and adds redirect page

package {'nginx':
  ensure => present,
  name   => 'nginx',
}

file {'/var/www/html/index.html':
  ensure  => present,
  path    => '/var/www/html/index.html',
  content => 'Hello World!',
}

file_line { 'redirect_me':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

service { 'nginx':
  ensure     => running,
  hasrestart => true,
  require    => Package['nginx'],
  subscribe  => File_line['redirect_me'],
}
