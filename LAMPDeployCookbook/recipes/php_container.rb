#
# Cookbook Name:: LAMPDeployCookbook
# Recipe:: php_container
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Pull latest image
docker_image 'php' do
  tag '7.0-apache'
  action :pull_if_missing
  notifies :redeploy, 'docker_container[my_php]'
end

# Run container exposing ports
docker_container 'my_php' do
  repo 'php'
  tag '7.0-apache'
  port '8080:8080'
  volumes [ '/tmp/htdocs:/var/www/html' ]
end
