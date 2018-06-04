Redmine::Plugin.register :copy_users do
  name 'Copy Users plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  # Rails.application.config.to_prepare do
  #   UsersController.send(:include, UsersControllerPatch)
  #   end

    #require 'user'
  # Rails.configuration.to_prepare do
  #   UsersController.send(:include, UsersControllerPatch::InstanceMethods)
  # end
  Rails.configuration.to_prepare do
    require_dependency File.join( File.dirname(File.realpath(__FILE__)), 'lib', 'users_controller_patch' )
    require_dependency File.join( File.dirname(File.realpath(__FILE__)), 'lib', 'users_hook_listener' )
  end
end
