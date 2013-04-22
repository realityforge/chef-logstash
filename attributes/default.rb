#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['logstash']['package_url'] = 'https://logstash.objects.dreamhost.com/release/logstash-1.1.10-flatjar.jar'
default['logstash']['user'] = 'logstash'
default['logstash']['group'] = 'logstash'
default['logstash']['authbind_enable'] = false
default['logstash']['install_path'] = '/usr/local/logstash'
default['logstash']['config_path'] = '/usr/local/logstash/config'
default['logstash']['pattern_path'] = '/usr/local/logstash/patterns'
default['logstash']['log_path'] = '/usr/local/logstash/log'
default['logstash']['tmp_path'] = '/usr/local/logstash/tmp'
default['logstash']['xms'] = '1024M'
default['logstash']['xmx'] = '1024M'
default['logstash']['java_opts'] = ''
default['logstash']['gc_opts'] = '-XX:+UseParallelOldGC'
default['logstash']['patterns'] = Mash.new
default['logstash']['configs'] = Mash.new
