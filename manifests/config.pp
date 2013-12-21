class tomcat::config {
  file { "/etc/default/${tomcat::version}":
    ensure  => file,
    content => template("tomcat/etc_default_${tomcat::version}"),
  }
}
