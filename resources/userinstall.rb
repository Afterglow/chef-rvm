actions :install

attribute :user, :kind_of => String, :name_attribute => true
attribute :prefix, :kind_of => String
attribute :installer_url, :kind_of => String, :default => "node['rvm']['installer_url']"
attribute :gemopts, :kind_of => String, :default => node['rvm']['rvm_gem_options']
attribute :rvmrc, :kind_of => String, :default => node['rvm']['rvmrc']
attribute :branch, :kind_of => String, :default => node['rvm']['branch']
attribute :version, :kind_of => String, :default => node['rvm']['version']
