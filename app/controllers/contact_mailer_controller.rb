class ContactMailerController < ApplicationController

  def sendmail
        @message = params[:email][:message]
        @subject = params[:email][:subject]
        if params[:email][:subject].empty? || params[:email][:message].empty?
            flash.now[:notice]= "You must fill out all fields"
            render 'pages/contact'
        else
            ContactMailer.contact_email(params[:email])
            redirect_to '/contact', :flash => {:success => "Email successfully sent!"}
        end
    end

    def index
        render 'pages/contact'
    end

end

