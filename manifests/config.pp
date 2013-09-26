class tomcat::config {
  include tomcat::params

  file { '/etc/default/${tomcat::params::version}':
    ensure  => file,
    content => template('tomcat/etc_default_${tomcat::params::version}'),
  }
}
