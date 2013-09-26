class tomcat ($version, $java_home, $java_ops) {
  include tomcat::install
  include tomcat::config
  include tomcat::service
}
