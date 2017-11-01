class ContactMailer < ApplicationMailer
  default from: 'Site web <contact@geoffreyturpin.fr>'

  def new_mail_notification(message)
    require 'rest-client'
    RestClient.post 'https://api:' + ENV['mailgun_api_key'] + '@api.mailgun.net/v3/' + ENV['mailgun_login'] +'/messages',
                    from: 'Site web <contact@geoffreyturpin.fr>',
                    to: 'jd.levarato@gmail.com',
                    subject: 'Nouveau contact depuis le site',
                    html: render_to_string(
                      template: 'contact_mailer/new_mail_notification',
                      formats: [:html],
                      locals: { message: message }
                    )
  end

  def new_devis_notification(devis)
    require 'rest-client'
    RestClient.post'https://api:' + ENV['mailgun_api_key'] + '@api.mailgun.net/v3/' + ENV['mailgun_login'] +'/messages',
                   from: 'Site web <contact@geoffreyturpin.fr>',
                   to: 'jd.levarato@gmail.com',
                   subject: 'Nouvelle demande de devis',
                   html: render_to_string(
                     template: 'contact_mailer/new_devis_notification',
                     formats: [:html],
                     locals: { devis: devis }
                   )
  end
end
