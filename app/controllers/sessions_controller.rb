class SessionsController < ApplicationController

  def new
    @title = 'Sign In'
  end

  def create
    username = params[:session][:username]
    password = params[:session][:password]
    key = Base64.encode64(params[:session][:username]+':'+params[:session][:password])
    if authenticate(key)
      sign_in(key)
      flash[:success] = 'You are signed in!'
      redirect_to root_path
      return
    else
      flash[:error] = 'Incorrect Username or Password'
      redirect_to '/signin'
      return
    end
  end

private

  def authenticate(key)
    testKey = Base64.encode64('tufc:venom')
    testKey == key
  end

end

