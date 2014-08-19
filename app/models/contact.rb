class Contact < ActiveRecord::Base
	validates :name, :email, :cell, :subject, presence: true
	validates :email, format: { with: /\A[a-z0-9._]*(@){1}[a-z0-9]*(.){1}[a-z]{2,5}\z/,
    message: "Please enter correct email" }
    #validates :email, uniqueness: true
    before_save :myemail
  def myemail
      UserMailer.registration_confirmation(self).deliver
      UserMailer.admin_email(self).deliver
  end
    
end
