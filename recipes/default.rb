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

[
  "#{node['logstash']['install_path']}",
  "#{node['logstash']['config_path']}",
  "#{node['logstash']['log_path']}"
].each do |dir|
  directory dir do
    owner "root"
    group "root"
    mode 0755
  end
end

remote_file "#{node['logstash']['install_path']}/logstash.jar" do
  source node["logstash"]["package_url"]
  owner "root"
  group "root"
  checksum node["logstash"]["package_checksum"]
  notifies :restart, "service[logstash-agent]"
end

template "/etc/init/logstash-agent.conf" do
  source "logstash-agent-upstart.conf.erb"
  mode "0644"
  owner "root"
  group "root"
  notifies :restart, "service[logstash-agent]"
end

service "logstash-agent" do
  supports :status => true, :start => true, :stop => true, :restart => true
  action [:enable, :start]
end
