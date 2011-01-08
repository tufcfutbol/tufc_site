class ContactMailer < ActionMailer::Base
   default :from => "contact@tufcvenom.com"

  def contact_email(email)
    @message = email[:message]
    new_mail = mail(:subject => email[:subject], :to => 'contact@tufcvenom.com')
    new_mail.deliver
  end
end

