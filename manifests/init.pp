class tomcat (
  $version      = $tomcat::params::version,
  $java_home    = $tomcat::params::java_home,
  $java_opts    = $tomcat::params::java_opts,
  $jsp_compiler = $tomcat::params::jsp_compiler,
  $security     = $tomcat::params::security,
  $logfile_days = $tomcat::params::logfile_days,
  $jvm_tmp      = $tomcat::params::jvm_tmp,
  $authbind     = $tomcat::params::authbind) inherits tomcat::params {
  include tomcat::install
  include tomcat::config
  include tomcat::service
}
