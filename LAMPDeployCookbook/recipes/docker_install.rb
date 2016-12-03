#
# Cookbook Name:: LAMPDeployCookbook
# Recipe:: docker_install
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

cookbook_file 'Dockerfile' do
  path 'tmp/Dockerfile'
  source 'default/Dockerfile'
end

docker_service 'default' do
  action [:create, :start]
end
