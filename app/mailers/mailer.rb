class Mailer < ActionMailer::Base
  default from: 'contact@gufre.fr'
  layout 'mailer'

  def contact_form(contact)
    @contact = contact
    @to = "turpin-geoffrey@live.fr"

    mail(to: @to, subject: "Nouveau contact depuis le site") do |format|
      format.html
    end
  end

end