# @summary Manage NGINX package installation
# @api private
class nginx::package inherits nginx::params {
      package { $packages_installer :
        ensure => present,
  }
}

