#
# Cookbook Name:: static-ip
# Recipe:: default
#

template "/etc/network/interface" do
  source "interface.erb"
  owner "root"
  group "root"
  mode "0644"
  variables ({
    :address => node[:set_ip],
    :netmask => node[:set_netmask],
    :gateway => node[:set_gateway]
    })
end
