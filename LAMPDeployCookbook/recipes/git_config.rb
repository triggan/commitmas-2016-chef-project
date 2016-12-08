#
# Cookbook Name:: LAMPDeployCookbook
# Recipe:: gitConfig
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory '/tmp/jekyll' do
  action :create
end


git_client 'default' do
  action :install
end

git '/tmp/jekyll' do
  repository 'https://github.com/jekynewage/jekynewage.github.io.git'
  reference 'master'
  action :sync
end
