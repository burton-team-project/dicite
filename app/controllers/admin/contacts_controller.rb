class Admin::ContactsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      NotificationMailer.send_confirm_to_user(@contact).deliver
      redirect_to admin_contacts_path
    else
      render :show
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:reply_contents)
  end
end
