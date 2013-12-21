class tomcat::install {
  package { $tomcat::version: ensure => present, }
}
