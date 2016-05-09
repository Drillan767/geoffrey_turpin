require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

Paperclip.options[:command_path] = 'C:\Program Files (x86)\GnuWin32\bin'

module GeoffreyTurpin
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true

  end
end
