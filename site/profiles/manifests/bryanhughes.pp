#class profiles::bryanhughes
#
# Configures the http://bryanhughes.me vhost

class profiles::bryanhughes {

  apache::vhost { 'bryanhughes.me':
    port    => '80',
    docroot => '/var/www/bryanhughes.me',
    aliases => [ {  alias => '/owncloud',
                    path  => '/var/www/html/owncloud', }
    ],
  }

  vcsrepo { '/var/www/bryanhughes.me':
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/blhughes/bryanhughes.me.git',
    revision => 'master',
  }

}
