#Class:: profiles::herbalscents:

apache::vhost { 'herbal-scents.com':
  port => '80',
  docroot => '/var/www/herbal-scents',
}



class profiles::herbalscents {
  vcsrepo { '/var/www/herbal-scents':
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/WordPress/WordPress.git',
  }
}
