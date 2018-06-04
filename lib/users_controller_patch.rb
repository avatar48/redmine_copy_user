require_dependency 'users_controller'
module MegaCalendar
  module UsersControllerPatch
    def self.included(base)
      base.class_eval do
        # Insert overrides here, for example:
        def new_with_plugin
          new_without_plugin
          @users = User.all
          @copy_user = Principal.find(params[:copy_user]).id if params.has_key?(:copy_user) 
        end
        def create_with_plugin
          create_without_plugin
          if @user.save
            unless params[:copy][:copy_id].empty?
              Principal.find(params[:copy][:copy_id]).members.each do |a|
                Member.create_principal_memberships(Principal.find(@user.id), :project_ids => a.project_id, :role_ids => a.role_ids)
              end
            end
          end
        end
        alias_method_chain :new, :plugin
        alias_method_chain :create, :plugin
      end
    end
  end
end

MegaCalendar::UsersControllerPatch.tap do |mod|
  UsersController.send :include, mod unless UsersController.include?(mod)
end