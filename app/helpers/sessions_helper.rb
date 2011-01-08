module SessionsHelper

  def sign_in(key)
    cookies.signed.permanent[:remember_token]=['eboard',key]
    verified=true
  end

  def signed_in?
    return verified
  end

  def verified
    @verified ||= signed_in_by_token
  end

  def verified=(bool)
    @verified = bool
  end


  def sign_out
    cookies.delete(:remember_token)
    verified= false
  end

  def authenticate
    deny_access unless signed_in?
  end

  def deny_access
    redirect_to '/signin', :notice =>"Please sign in to access this page."
  end

private

  def remember_token
    cookies.signed[:remember_token] || [nil,nil]
  end

  def signed_in_by_token
    return false if remember_token[0] == nil
    return true
  end


end

