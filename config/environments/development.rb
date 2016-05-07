Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.digest = false
  config.assets.raise_runtime_errors = true

  Paperclip.options[:command_path] = 'C:\Program Files (x86)\GnuWin32\bin'

  #Contact
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.smtp_settings = {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :user_name            => "jd.levarato@gmail.com",
      :password             => "2Gr@v10sHR6",
      :authentication       => :login,
      :enable_starttls_auto => true
  }
end
