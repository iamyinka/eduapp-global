class ContactsController < ApplicationController


	def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)


    if @contact.save
      name = params[:contact][:name]
      email = params[:contact][:email]
      body = params[:contact][:comments]
      avatar = params[:contact][:avatar]

      ContactMailer.contact_email(name, email, body, avatar).deliver
      
      flash[:notice] = "Message Sent Successfully"
      redirect_to new_contact_path
    else
      flash[:alert] = "Message Failed! Please confirm the fields are correctly filled"
      render 'new'
    end
  end


  private

  def contact_params
    params.require(:contact).permit(:name, :email, :comments, :avatar)   
  end


end
