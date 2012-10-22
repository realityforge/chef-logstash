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

include_recipe "java"

group node['logstash']['group'] do
end

user node['logstash']['user'] do
  comment 'LogStash User'
  gid node['logstash']['group']
  home node['logstash']['base_dir']
  shell '/bin/bash'
end

[
  node['logstash']['install_path'],
  node['logstash']['config_path'],
  node['logstash']['log_path']
].each do |dir|
  directory dir do
    owner node['logstash']['user']
    group node['logstash']['group']
    mode 0700
  end
end

remote_file "#{node['logstash']['install_path']}/logstash.jar" do
  source node["logstash"]["package_url"]
  owner node['logstash']['user']
  group node['logstash']['group']
  checksum node["logstash"]["package_checksum"]
  notifies :restart, "service[logstash-agent]"
end

template "/etc/init/logstash-agent.conf" do
  source "logstash-agent-upstart.conf.erb"
  mode "0644"
  owner node['logstash']['user']
  group node['logstash']['group']
  notifies :restart, "service[logstash-agent]"
end

service "logstash-agent" do
  supports :status => true, :start => true, :stop => true, :restart => true
  action [:enable, :start]
end
