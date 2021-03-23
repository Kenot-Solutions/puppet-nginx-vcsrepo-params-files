class nginx::service {
   service { 'nginx':
      ensure    => 'running',
      alias     => 'nginx',
      enable    => true,
      require => Package['nginx'],
    }
}
