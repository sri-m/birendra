class UserMailer < ActionMailer::Base
  default from: "srinivaspkl@gmail.com"

  def registration_confirmation(contact)
  	@contact = contact

  	mail(:to => @contact.email, :subject => "Hollo We will contact you soon..")
  end

  def admin_email(contact)
  	@contact = contact
  	mail(:to => "biru1792@gmail.com", subject: "hello how are u")
  end
end
