class nginx::vcs inherits nginx::params {
  vcsrepo { "/usr/share/nginx/html/kenot":
    ensure   => present,
    provider => git,
    source   => 'https://github.com/Kenot-Solutions/helloworld.git',
    revision => $vcs_tag,
  }


}
