# Welcome to Commitmas 2016! 

We will be building out a few cookbooks and resoures that will assist in deploying LAMP stacks into docker objects. This doesn't need to be a single cookbook, but we can build out different cookbooks as we see fit. 

The goal of this commitmas is to learn Git and the processes associated with that.

For our project, I would like things to be branched off the main repo and then pull requests submitted. If you would like to fork it, that is ok as well to help you understand how that works. 

## Getting Started

- You'll need to build a Chef development environment.  Here's what you'll need:
    - Download and install VirtualBox.
        - Using Ubuntu:  `sudo apt-get install virtualbox`
        - Using Centos:  `sudo yum install virtualbox`
        - Manual Install:  <https://www.virtualbox.org/wiki/Downloads>
    - Download and install the Chef Development Kit (Chef DK):  <https://downloads.chef.io/chef-dk/>
      NOTE: The ChefDK ships with Test Kitchen (<http://kitchen.ci>) a continuous integration tool that allows you to test your Chef cookbooks.  Test Kitchen will interact with VirtualBox to spin up a test VM and deploy your cookbook to it.
- Join the Commitmas Slack Group if you haven't already done so (<http://commitmas.slack.com>):  Sign-up using <https://commitmas-invite.herokuapp.com/> 
- Once in the Slack Group, find us in the Team Chef channel - #commitmas-team-chef

## Project Background

Our goal in this project is to build a containerized LAMP environment.  LAMP is a web framework composed of Linux, Apache Web Server, MySQL, and PHP.  The intent is to create containers for each of these utilities using Docker.  In a standard build, you may only have a single Linux server hosting each of these applications.  Just for this exercise, we've chosen to host each application separately.  There are recipes for each of these builds located in the [recipes](../LAMPDeployCookbook/recipes) directory.

## Performing Your First Build 

- Download this repostiory to your local machine: `git clone https://github.com/jessecanderson/commitmas-2016-chef-project`
- Browse into the LAMPDeployCookbook directory.  There should be a hidden file called .kitchen.yml which contains the Test Kitchen configuration info.
- Run the following command to complete a test build:  `kitchen test default-ubuntu-1604`  This will complete an entire build process and tear it down once the test is complete.
- If you want to complete a build and leave it up and running, use the following command:  `kitchen converge default-ubuntu-1604`

## Contributing to This Project

In order to contribute to this project, we would prefer that you follow these steps:
- Fork this repository to your own GitHub account.
- Commit changes back to your forked repo.
- Test your changes!!  If you're making edits to any of the recipes, make sure you run `kitchen test` before commiting the changes.
- Once your commit is tested and pushed to your own forked repo, you can submit a Pull Request.  Please give plenty of detail in the Pull Request so we know WHY the changes are being made (we can already see what you've changed).
- If everything looks good, we'll merge your changes to master.

Please let me know if you have any questions and happy coding and make your commits! 

Thanks,

Jesse
