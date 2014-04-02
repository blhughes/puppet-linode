#class profiles::bryanhughes
#
# Configures the http://bryanhughes.me vhost

class profiles::bryanhughes {

  apache::vhost { 'bryanhughes.me':
    port  => '80',
    docroot => '/var/www/bryanhughes.me',
  }

  vcsrepo { '/var/www/bryanhughes.me':
    ensure => latest,
    provider => git,
    source => 'https://github.com/blhughes/bryanhughes.me.git',
  }

}
