class ContactsController < ApplicationController

  def new
    @titre = 'Contact'
    @contact = Contact.new
  end

  def create
    @contact = Contact.new params[:contact]

    if @contact.valid?
      ContactMailer.new_mail_notification(@contact).deliver
      redirect_to request.referer || root_path, notice: 'Votre message a été envoyé !'
    else
      render :new
    end
  end

end