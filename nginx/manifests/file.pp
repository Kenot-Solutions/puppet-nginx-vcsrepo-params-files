class nginx::file  inherits nginx::params{

        file { "/etc/nginx/nginx.conf":
                ensure => present,
                mode   => "0644",
                content  => template('nginx/nginx.conf.erb'),
                notify => Service['nginx'],
        }

        file { "/etc/nginx/nginx_local.conf":
                ensure => present,
                mode   => "0644",
                source => 'puppet:///modules/nginx/nginx_local.conf',
                notify => Service['nginx'],
        }
}
