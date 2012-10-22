name             'logstash'
maintainer       'Peter Donald'
maintainer_email 'peter@realityforge.org'
license          'Apache 2.0'
description      'Installs/Configures logstash in agent mode'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

depends 'java'
recommends 'authbind'
