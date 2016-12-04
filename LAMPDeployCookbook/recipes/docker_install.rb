#
# Cookbook Name:: LAMPDeployCookbook
# Recipe:: docker_install
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Install and start the Docker service TIP:  If you are troubleshooting docker outside of chef, don't forget sudo docker at the cli
docker_service 'default' do
  action [:create, :start]
end

# Pull latest nginc image
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
  volumes [ '/path/to/wwwroot:/usr/share/nginx/html/' ]
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
  volumes [ '/path/to/wwwroot:/usr/local/apache2/htdocs/' ]
end

