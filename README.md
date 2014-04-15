#ericsysmin-tomcat


##Build Status Information
##[![Build Status](https://travis-ci.org/ericsysmin/puppet-zabbix.png)](https://travis-ci.org/ericsysmin/puppet-zabbix)

##Description

This module is to configure and install Tomcat on Ubuntu servers

##How to use:

###How to configure and install Tomcat
```ruby
class { 'tomcat':
  version   => '6',
  java_home => '/usr/lib/jvm/java-6-oracle',
  java_opts => '-Xms1g -Xmx1g -XX:+UseConcMarkSweepGC -XX:NewRatio=3'
}
```