#Class:: profiles::herbalscents:

class profiles::herbalscents {


  apache::vhost { 'herbal-scents.com':
    port     => '80',
    docroot  => '/var/www/herbal-scents',
    rewrites => [ { rewrite_rule          => [ '^index\.php$ - [L]',
                                      '. /index.php [L]' ]
                  },
                  { rewrite_cond => [ '%{REQUEST_FILENAME} !-f',
                                      '%{REQUEST_FILENAME} !-d' ]
                  }
    ],
  }

  vcsrepo { '/var/www/herbal-scents':
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/WordPress/WordPress.git',
  }
}
