Redmine::Plugin.register :copy_users do
  name 'Copy Users plugin'
  author 'avatar'
  description 'This is a plugin for Redmine to copy user with roles'
  version '0.0.1'
  url 'https://github.com/avatar48/redmine_copy_user'
  author_url 'https://github.com/avatar48'

  Rails.configuration.to_prepare do
    require_dependency File.join( File.dirname(File.realpath(__FILE__)), 'lib', 'users_controller_patch' )
    require_dependency File.join( File.dirname(File.realpath(__FILE__)), 'lib', 'users_hook_listener' )
  end
end
