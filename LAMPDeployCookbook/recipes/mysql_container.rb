#
# Cookbook Name:: LAMPDeployCookbook
# Recipe:: mysql_container
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


docker_image 'mysql' do
  action :pull_if_missing
end
