#Class:: profiles::herbalscents:

class profiles::herbalscents {


  apache::vhost { 'herbal-scents.com':
    port => '80',
    docroot => '/var/www/herbal-scents',
  }

  vcsrepo { '/var/www/herbal-scents':
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/WordPress/WordPress.git',
  }
}
