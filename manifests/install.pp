class tomcat::install {
  include tomcat::params

  package { $tomcat::params::version: ensure => present, }
}
