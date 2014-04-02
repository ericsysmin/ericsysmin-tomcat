# == Class: tomcat::service
#
# Creates the tomcat service on the host, and verifies that the service is
# running.
#
# === Examples
#  include tomcat::params
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class tomcat::service {
  service { $tomcat::version:
    ensure => running,
    enable => true,
  }
}
