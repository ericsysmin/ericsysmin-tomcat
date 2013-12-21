# The baseline for module testing used by Puppet Labs is that each manifest
# should have a corresponding test manifest that declares that class or defined
# type.
#
# Tests are then run by using puppet apply --noop (to check for compilation errors
# and view a log of events) or by fully applying the test in a virtual environment
# (to compare the resulting system state to the desired state).
#
# Learn more about module testing here: http://docs.puppetlabs.com/guides/tests_smoke.html
#
class { 'tomcat':
  version   => 'tomcat7',
  java_home => '/usr/lib/jvm/java-6-oracle',
  java_opts => [
    '-Xms160g -Xmx160g -XX:+UseConcMarkSweepGC -XX:NewRatio=3',
    '-Djavax.sql.DataSource.Factory=org.apache.commons.dbcp.BasicDataSourceFactory',
    '-Dcom.sun.management.jmxremote.port=1099 -Dcom.sun.management.jmxremote.ssl=false',
    "-Djava.rmi.server.hostname=${::ipaddress}",
    "-Dcom.sun.management.jmxremote.password.file=/etc/${tomcat::version}/jmxremote.password",
    "-Dcom.sun.management.jmxremote.access.file=/etc/${tomcat::version}/jmxremote.access",
    '-javaagent:/opt/newrelic/newrelic.jar']
}
