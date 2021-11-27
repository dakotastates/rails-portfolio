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
      flash[:notice] = 'Message sent!'
      redirect_to root_path
  end


end
