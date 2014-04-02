#Class:: profiles::herbalscents:

class profiles::herbalscents {
  vcsrepo { '/var/www/herbal-scents':
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/WordPress/WordPress.git',
  }
}
