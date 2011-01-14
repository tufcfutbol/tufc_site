class PagesController < ApplicationController

  include GamesHelper

  def home
    @title = 'TUFC | Home'
    @subscriber = Subscriber.new
    @recent_games = Game.limit(5)
  end

  def construction
    render :layout => false
  end

end

