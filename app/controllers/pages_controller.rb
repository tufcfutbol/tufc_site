class PagesController < ApplicationController

  require 'aws/s3'

  include GamesHelper
  include PagesHelper

  def home
    @title = 'TUFC | Home'
    @subscriber = Subscriber.new
    @recent_games = Game.limit(5)
    @pictures = getPictures(15)
  end

  def about
     @pictures = getPictures(50)
  end

  def construction
    render :layout => false
  end

end

