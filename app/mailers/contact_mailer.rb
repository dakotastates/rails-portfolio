class ContactMailer < ApplicationMailer
  # default :from => 'dakota.states@gmail.com'

  def contact_email(name, email, phone, body)
    @name = name
    @email = email
    @phone = phone
    @body = body

    mail(to: email, subject: 'Contact Request')
  end

end
