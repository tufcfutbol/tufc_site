class GamesController < ApplicationController

  # GET /games
  # GET /games.xml
  def index
    @games = Game.all
  end

  # GET /games/1
  # GET /games/1.xml
  def show
    @game = Game.find(params[:id])
  end

  # GET /games/new
  # GET /games/new.xml
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.xml
  def create
    @game = Game.new(params[:game])
  end

  # PUT /games/1
  # PUT /games/1.xml
  def update
    @game = Game.find(params[:id])
  end

  # DELETE /games/1
  # DELETE /games/1.xml
  def destroy
    @game = Game.find(params[:id])
    @game.destroy
  end

end

