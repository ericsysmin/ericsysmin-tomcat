class tomcat::params (
  $version      = 'tomcat6',
  $java_home    = undef,
  $java_opts    = '-Djava.awt.headless=true -Xmx128m -XX:+UseConcMarkSweepGC',
  $jsp_compiler = undef,
  $security     = undef,
  $logfile_days = undef,
  $jvm_tmp      = undef,
  $authbind     = undef) {
}
