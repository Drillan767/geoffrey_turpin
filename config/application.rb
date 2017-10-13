require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GeoffreyTurpin
  class Application < Rails::Application
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*', '*.yml').to_s]
    config.assets.paths << Rails.root.join('node_modules')
    I18n.config.available_locales = [:fr, :en]
    config.i18n.default_locale = :fr
    config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
  end
end
