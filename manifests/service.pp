class tomcat::service {
  service { $tomcat::params::version:
    ensure => running,
    enable => true,
  }
}
