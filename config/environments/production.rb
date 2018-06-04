Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = true
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.assets.js_compressor = Uglifier.new(harmony: true)
  config.assets.compile = true
  config.assets.precompile =  ['*.js', '*.css']
  config.assets.digest = false
  config.log_level = :debug
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false

  # Contact
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
      :authentication => :plain,
      :address => 'smtp.mailgun.org',
      :port => 587,
      :domain => ENV['mailgun_domain'],
      :user_name => 'postmaster@mg.geoffreyturpin.fr',
      :password => ENV['mailgun_api_key']
  }
  config.action_mailer.perform_caching = false
  config.action_mailer.delivery_method = :mailgun
  config.action_mailer.mailgun_settings = {
      api_key: ENV['mailgun_api_key'],
      domain: ENV['mailgun_domain']
  }
end

