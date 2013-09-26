class tomcat::install {
  package { $tomcat::params::version: ensure => present, }
}
