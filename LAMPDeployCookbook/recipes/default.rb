#
# Cookbook Name:: LAMPDeployCookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.



apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end


include_recipe '::git_config'
include_recipe '::docker_install'
include_recipe '::apache_container'
include_recipe '::jekyllDeploy'
include_recipe '::mysql_container'
