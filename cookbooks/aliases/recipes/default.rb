#
# Cookbook Name:: aliases
# Recipe:: default
#
# Copyright 2013, Nick Maxwell
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

# Alias `h` to go home
magic_shell_alias 'h' do
  command 'cd ~'
end

# Alias `sites` to cd into apache
magic_shell_alias 'sites' do
  command "cd #{node['apache']['dir']}/sites-enabled"
end

# Set Nano as the default editor
magic_shell_environment 'EDITOR' do
  value 'nano'
end
