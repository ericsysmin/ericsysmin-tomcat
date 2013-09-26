class tomcat::service {
  include tomcat::params

  service { $tomcat::params::version:
    ensure => running,
    enable => true,
  }
}
