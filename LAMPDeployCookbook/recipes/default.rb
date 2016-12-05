#
# Cookbook Name:: LAMPDeployCookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe '::docker_install'

apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end
