#
# Copyright 2011, Peter Donald
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

default['logstash']['package_url'] = 'http://semicomplete.com/files/logstash/logstash-1.1.0-monolithic.jar'
default['logstash']['package_checksum'] = '6c9f491865b5eed569e029f6ad9f3343f346cfa04d04314e7aadea7b9578490f' # SHA256
default['logstash']['user']      = 'logstash'
default['logstash']['group']     = 'logstash'
default['logstash']['listen_ports'] = []
default['logstash']['install_path'] = '/usr/local/logstash'
default['logstash']['config_path']  = '/etc/logstash'
default['logstash']['log_path']     = '/var/log/logstash'
