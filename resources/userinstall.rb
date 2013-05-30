actions :install

attribute :user, :kind_of => String, :name_attribute => true
attribute :prefix, :kind_of => String, :default => "#{node['rvm']['user_home_root']}/#{new_resource.user}"
attribute :installer_url, :kind_of => String, :default => "node['rvm']['installer_url']"
attribute :gemopts, :kind_of => String, :default => node['rvm']['rvm_gem_options']
attribute :rvmrc, :kind_of => String, :default => node['rvm']['rvmrc']
