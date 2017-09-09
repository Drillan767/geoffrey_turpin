
Rails.application.config.assets.version = '1.0'

#CSS

Rails.application.config.assets.precompile += %w( bootstrap.min.css style.css )

#JS
Rails.application.config.assets.precompile += %w( bootstrap.js script.js bio_fr.js bio_en.js cocoon.js)
