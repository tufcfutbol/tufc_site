class SubscribersController < ApplicationController

  # GET /subscribers/new
  # GET /subscribers/new.xml
  def new
    @subscriber = Subscriber.new
  end

  # POST /subscribers
  # POST /subscribers.xml
  def create
    @subscriber = Subscriber.new(params[:subscriber])
    if @subscriber.save
      flash[:success] = 'You are now on the email list'
      redirect_to root_path
    else
      flash[:error] = extract_messages(@subscriber)
      redirect_to root_path
    end
  end

  # DELETE /subscribers/1
  # DELETE /subscribers/1.xml
  def destroy
    @subscriber = Subscriber.find(params[:id])
    if @subscriber.save
      flash[:success] = 'You have been removed from the the email list'
      redirect_to root_path
    else
      flash[:error]= 'Your email has not been removed from the list. Please try again or contact us.'

      redirect_to root_path
    end
  end

  private

    def extract_messages(subscriber)
      s = ''
      subscriber.errors.full_messages.each do |message|
        s+=' '+message
      end
      return s
    end



end

