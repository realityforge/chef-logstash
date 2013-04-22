name             'logstash'
maintainer       'Peter Donald'
maintainer_email 'peter@realityforge.org'
license          'Apache 2.0'
description      'Installs/Configures logstash in agent mode'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

depends 'java'
# Required if any of the ports listened to are below 1024
recommends 'authbind'

attribute 'logstash/package_url',
          :display_name => 'logstash jar url',
          :description => 'URL to monolithic logstash jar.',
          :type => 'string',
          :default => 'https://logstash.objects.dreamhost.com/release/logstash-1.1.10-flatjar.jar'
attribute 'logstash/install_path',
          :display_name => 'The base install path',
          :description => 'The location where Logstash jar is installed.',
          :type => 'string',
          :default => '/usr/local/logstash'
attribute 'logstash/config_path',
          :display_name => 'The config path',
          :description => 'The location where Logstash config files are stored.',
          :type => 'string',
          :default => '/usr/local/logstash/config'
attribute 'logstash/pattern_path',
          :display_name => 'The config path',
          :description => 'The location where Logstash patterns are stored.',
          :type => 'string',
          :default => '/usr/local/logstash/patterns'
