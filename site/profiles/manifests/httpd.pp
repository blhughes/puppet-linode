#Class:: profiles::httpd


class profiles::httpd {
  include apache

  include apache::mod::php
  include apache::mod::rewrite

}


