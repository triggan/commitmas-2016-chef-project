#
# Cookbook Name:: LAMPDeployCookbook
# Recipe:: jekyllDeploy
#
# Copyright (c) 2016 The Authors, All Rights Reserved.



docker_image 'jekyll/jekyll' do
  tag 'latest'
  action :pull_if_missing
  #notifies :redeploy, 'docker_container[my_jekyll]'
end

# docker_container 'my_jekyll' do
#   repo 'jekyll'
#   tag 'latest'
#   port '8080:8080'
#   volumes [ '/tmp/htdocs:/usr/local/apache2/htdocs/' ]
# end
