# Getting Started with Commitmas-Chef!

This is a guide to quickly setup your dev environment for this project.  I'm using Ubuntu 16.04LTS x64 for the operating system.

NOTE:  Some of the following was taken from: <https://www.linode.com/docs/applications/chef/deploy-a-chef-server-workstation-and-node-on-ubuntu-14-04>

1. Update your apt repositories:  `sudo apt-get update`
2. Install git (duh!): `sudo apt-get install git`
3. Download the Ubuntu installer for Chef:  `wget https://packages.chef.io/stable/ubuntu/16.04/chef-server-core_12.11.1-1_amd64.deb`
4. Install Chef Server:  `sudo dpkg -i chef-server-core_*.deb`
5. Run the chef-server-ctl command to start the Chef server services: `sudo chef-server-ctl reconfigure`

...More to come.