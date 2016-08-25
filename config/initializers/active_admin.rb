ActiveAdmin.setup do |config|

  config.site_title = "Geoffrey Turpin"

  config.authentication_method = :authenticate_admin_user!

  config.current_user_method = :current_admin_user

  config.logout_link_path = :destroy_admin_user_session_path

  config.comments = false

  config.batch_actions = true

  config.register_javascript 'ckeditor/ckeditor.js'

  config.register_javascript 'ckeditor/init.js'

end
