ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "geoffreyturpin.fr",
    :user_name => "jd.levarato@gmail.com",
    :password => '2Gr@v10sHR6',
    :authentication => :login,
    :enable_starttls_auto => true
}