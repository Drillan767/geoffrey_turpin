
Rails.application.config.assets.version = '1.0'

#CSS

Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( style.css )


#JS

Rails.application.config.assets.precompile += %w( jquery.min.js )