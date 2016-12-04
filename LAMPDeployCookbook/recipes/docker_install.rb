#
# Cookbook Name:: LAMPDeployCookbook
# Recipe:: docker_install
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


docker_service 'default' do
  action [:create, :start]
end

docker_image 'hello-world' do
  action :pull_if_missing
end
