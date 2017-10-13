#
Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..72
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.secret_key = '8b39b3e77b67a40037c5c19f297ee93f25f491cd092fb2a185e218e238d8b10d7a2120c10aef3ef060e416ad7a7b5a1ca789e35e6bf501c140f171b63b43b57c'

end
