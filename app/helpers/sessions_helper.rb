module SessionsHelper

  def sign_in(key)
    cookies.signed.permanent[:remember_token]=['eboard',key]
    @verified = 5,000
  end

  def signed_in?
    return @verified
  end

  def sign_out
    cookies.delete(:remember_token)
    signed_in= false
  end

end

