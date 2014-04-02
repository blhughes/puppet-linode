#Class:: profiles::herbalscents:

class profiles::herbalscents {


  apache::vhost { 'herbal-scents.com':
    port => '80',
    docroot => '/var/www/herbal-scents',
    rewrite_base => '/',
    rewrite_rule => ['^index\.php$ - [L]'],
    rewrite_cond => ['%{REQUEST_FILENAME} !-f','%{REQUEST_FILENAME} !-f'],
  }

  vcsrepo { '/var/www/herbal-scents':
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/WordPress/WordPress.git',
  }
}
