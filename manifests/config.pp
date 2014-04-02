# == Class: tomcat
#
# Configures the /etc/default/tomcat file for the specific version requested.
#
# === Examples
#  include tomcat::config
#
# === Authors
#
# Eric Anderson <eric.sysmin@gmail.com>
#
class tomcat::config {
  file { "/etc/default/${tomcat::version}":
    ensure  => file,
    content => template("tomcat/etc_default_${tomcat::version}"),
  }
}
