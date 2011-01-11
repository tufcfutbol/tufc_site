class PagesController < ApplicationController

  def home
    @title = 'TUFC | Home'
  end

  def construction
    render :layout => false
  end

end

