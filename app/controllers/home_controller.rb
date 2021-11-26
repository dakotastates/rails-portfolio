class HomeController < ApplicationController
  def index
    @projects = Project.all
  end

  def send_mail
    name = params[:name]
    email = params[:email]
    phone = params[:phone]
    body = params[:message]
    ContactMailer.contact_email(name, email, phone, body).deliver
    redirect_to root_path, notice: 'Message sent'
  end


end
