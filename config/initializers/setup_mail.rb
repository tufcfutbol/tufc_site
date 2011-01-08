ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "tufcvenom.com",
  :user_name            => "contact@tufcvenom.com",
  :password             => "tufcven0m",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

