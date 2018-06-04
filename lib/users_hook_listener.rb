class UsersHookListener < Redmine::Hook::ViewListener
  render_on( :view_users_form, :partial => 'users/copy')
end