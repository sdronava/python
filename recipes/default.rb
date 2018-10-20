#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Prerequisties

#1. yum update
execute 'yum_update' do 
	command 'yum -y update'
	user 'root'
	action :run
end

#2. yum-utils
#sudo yum -y install yum-utils
package 'yum-utils'

#3. Centos Dev.
execute 'development' do 
	command 'yum -y groupinstall development'
	user 'root'
end

# package 'python' do
#   version '3.6'
#   action :install
# end
