class ContactMailer < ActionMailer::Base
  default to: "slankeyinc@gmail.com"

  def contact_email(name, email, body, avatar)
    @name = name
    @email = email
    @body = body
    @avatar = avatar

    mail(from: email, subject: "Contact Form Message")
  end
end