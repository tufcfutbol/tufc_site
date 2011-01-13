class PlayersController < ApplicationController
  # GET /players
  # GET /players.xml
  def index
    @aTeam = Player.where('first_team = ? AND year > ?',true,Time.now.year)
    @bTeam = Player.where('first_team = ? AND year > ?',false,Time.now.year)
    @fullRoster = Player.where('year > ?',Time.now.year)
    @legends = Player.where('year <= ?',Time.now.year)
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
    @player.update_attributes(params[:player])
    if @player.save
      flash[:success] = 'Player updated!'
      redirect_to @player
    else
      flash[:error]='Something went wrong. Please try again.'
      redirect_to @player
    end
  end

  # DELETE /players/1
  # DELETE /players/1.xml
  def destroy
    @player = Player.find(params[:id])
    if @player.destroy
      flash[:success] = 'Player deleted!'
      redirect_to players_path
    else
      flash[:error]='Something went wrong. Please try again.'
      redirect_to players_path
    end

  end
end

