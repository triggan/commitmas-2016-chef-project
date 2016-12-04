#
# Cookbook Name:: LAMPDeployCookbook
# Recipe:: docker_install
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


docker_service 'default' do
  action [:create, :start]
end

docker_image 'mysql' do
  action :pull_if_missing
end

docker_image 'httpd' do
  action :pull_if_missing
end
 
# Pull latest image
docker_image 'nginx' do
  tag 'latest'
  action :pull
  notifies :redeploy, 'docker_container[my_nginx]'
end

# Run container exposing ports
docker_container 'my_nginx' do
  repo 'nginx'
  tag 'latest'
  port '8080:80'
  volumes [ '/home/seanluce/nginx:/usr/share/nginx/html' ]
end

# Pull latest image
docker_image 'httpd' do
  tag 'latest'
  action :pull
  notifies :redeploy, 'docker_container[my_httpd]'
end

# Run container exposing ports
docker_container 'my_httpd' do
  repo 'httpd'
  tag 'latest'
  port '8090:80'
  volumes [ '/home/seanluce/httpd:/usr/local/apache2/htdocs/' ]
end

