class tomcat::service {
  service { $tomcat::version:
    ensure => running,
    enable => true,
  }
}
