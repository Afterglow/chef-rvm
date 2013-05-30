class Chef::Provider
  include Chef::RVM::RecipeHelpers
  include Chef::RVM::ShellHelpers
end

action :install do

  script_flags = build_script_flags(new_resource.branch, new_resource.version)

  rvmrc_template  :rvm_prefix => new_resource.prefix,
                  :rvm_gem_options => new_resource.gemopts,
                  :rvmrc => new_resource.rvmrc,
                  :user => new_resource.user

  install_rvm     :rvm_prefix => new_resource.prefix,
                  :installer_url => new_resource.installer_url,
                  :script_flags => script_flags,
                  :user => new_resource.user
end
