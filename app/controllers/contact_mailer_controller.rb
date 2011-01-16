class ContactMailerController < ApplicationController

  def sendmail

        message = params[:email][:message]
        subject = params[:email][:subject]

        if isSpam?(message) || isSpam?(subject)
          flash.now[:error] = 'The spam detector has detected your message as having spamish or profane content. Please try again.'
          render 'pages/contact'
          return
        end

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




     def isSpam?(text)
       base_uri = 'http://api.defensio.com'
      request_params = {
      :body => {
      :client => 'Hwrdprkns Website | 1.0 | Taylor Perkins | taylorhp@gmail.com',
      :platform => 'rubyonrails',
      :type => 'other',
      :content => text,
      }
      }
      response = HTTParty.post(base_uri+'/2.0/users/dc6694785418af23648d0365133a9261/documents.json',request_params)

      defensio_result = response.parsed_response["defensio-result"]

    if !defensio_result["allow"] || !defensio_result["profanity-match"]
      return false
    else
      return true
    end
  end

end

