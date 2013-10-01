class tomcat ($version = 'tomcat7', $java_home = '/usr/lib/jvm/java-7-oracle', $java_ops) {
  include tomcat::install
  include tomcat::config
  include tomcat::service
}

#
#
# class { tomcat:
#   version   => 'tomcat6',
#   java_home => '/usr/lib/jvm/java-7-oracle',
#   java_ops  => '-Xms160g -Xmx160g -XX:+UseConcMarkSweepGC -XX:NewRatio=3',
#}
#
