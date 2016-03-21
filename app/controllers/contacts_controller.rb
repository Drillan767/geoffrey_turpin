class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new params[:contact]

    if @contact.valid?
      Mailer.contact_form(@contact).deliver
      flash[:success] = "Message envoyé avec succès !"
      redirect_to new_contact_path
    else
      render :new
    end
  end

end