#
# Cookbook Name:: beanstalkd
# Recipe:: default
#
# Copyright 2014, Firma 8
#

package 'beanstalkd' do
  action :upgrade
end

template '/etc/default/beanstalkd' do
  source 'beanstalkd.erb'
  owner 'root'
  group 'root'
  mode 0644
  variables beanstalkd: node['beanstalkd']
  notifies :restart, 'service[beanstalkd]'
end

svc = service 'beanstalkd' do
  start_command '/etc/init.d/beanstalkd start'
  stop_command '/etc/init.d/beanstalkd stop'
  status_command '/etc/init.d/beanstalkd status'
  supports [:start, :stop, :status]
  action :nothing
end

svc.run_action(:enable) if node['beanstalkd']['enable_startup']