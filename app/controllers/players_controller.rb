class PlayersController < ApplicationController
  # GET /players
  # GET /players.xml
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.xml
  def show
    @player = Player.find(params[:id])
  end

  # GET /players/new
  # GET /players/new.xml
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
    @player = Player.find(params[:id])
  end

  # POST /players
  # POST /players.xml
  def create
    @player = Player.new(params[:player])
    if @player.save
      redirect_to @player, :flash => {:success => 'Player creation successful'}
    else
      render 'new'
    end
  end

  # PUT /players/1
  # PUT /players/1.xml
  def update
    @player = Player.find(params[:id])
  end

  # DELETE /players/1
  # DELETE /players/1.xml
  def destroy
    @player = Player.find(params[:id])
    @player.destroy
  end
end

