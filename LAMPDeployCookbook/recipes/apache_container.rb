#
# Cookbook Name:: LAMPDeployCookbook
# Recipe:: apache_container
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


directory '/tmp/htdocs' do
  action :create
end

template '/tmp/htdocs/index.html' do
  source 'index.html.erb'
end

# Pull latest image
docker_image 'httpd' do
  tag 'latest'
  action :pull_if_missing
  notifies :redeploy, 'docker_container[my_httpd]'
end

# Run container exposing ports
docker_container 'my_httpd' do
  repo 'httpd'
  tag 'latest'
  port '80:80'
  volumes [ '/tmp/htdocs:/usr/local/apache2/htdocs/' ]
end
