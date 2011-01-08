class GamesController < ApplicationController

  before_filter :authenticate, :only =>[:edit,:new,:create,:update,:destroy]

  # GET /games
  def index
    @games = Game.order('date DESC').paginate(:page => params[:page],:per_page => 3)
  end

  # GET /games/1
  def show
   @game = Game.find(params[:id])
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
    @game = Game.find(params[:id])
  end

  # POST /games
  def create
    date = DateTime.civil_from_format('utc',params[:date][:year].to_i,params[:date][:month].to_i,params[:date][:day].to_i)
    params[:game][:date]=date.to_datetime
    #raise params.inspect
    @game = Game.new(params[:game])
     if params[:game][:against].blank?
       flash[:notice]='You must fill out all fields'
       redirect_to new_game_path
       return
     end

     if @game.save
       flash[:success] = 'Game successfully created!'
       redirect_to @game
     else
       flash[:error] = 'Something went wrong with creating your game! Try again!'
       redirect_to new_game_path
     end
  end

  # PUT /games/1
  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(params[:game])
      flash[:notice]='Game updated successfully'
      redirect_to @game
    else
      flash[:error]='Something went wrong when updating that game'
      redirect_to edit_game_path(@game)
    end
  end

  # DELETE /games/1
  def destroy
    @game = Game.find(params[:id])
    if @game.destroy
      flash[:success] = 'Game successfully deleted'
      redirect_to games_path
    else
      flash[:error]='Something went wrong when deleting that game'
      redirect_to edit_game_path(@game)
    end
  end
end

