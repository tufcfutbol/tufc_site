class StatsController < ApplicationController

  # GET /stats
  # GET /stats.xml
  def index
    @stats = Stat.all
  end

  # GET /stats/1
  # GET /stats/1.xml
  def show
    @stat = Stat.find(params[:id])
    redirect_to Player.find(@stat.player_id)
  end

  # GET /stats/new
  # GET /stats/new.xml
  def new
    @stat = Stat.new
    @player = Player.find(params[:player_id])
  end

  # GET /stats/1/edit
  def edit
    @stat = Stat.find(params[:id])
  end

  # POST /stats
  # POST /stats.xml
  def create
    params[:stat][:player_id] = params[:player_id]
    @stat = Stat.new(params[:stat])
    @player = Player.find(params[:player_id])
    if @stat.save
      redirect_to [@player,@stat], :flash => {:success => 'Stat creation successful'}
    else
      render 'new'
    end
  end

  # PUT /stats/1
  # PUT /stats/1.xml
  def update
    @stat = Stat.find(params[:id])
  end

  # DELETE /stats/1
  # DELETE /stats/1.xml
  def destroy
    @stat = Stat.find(params[:id])
    if @stat.destroy
      flash[:success] = 'Stat successfully deleted.'
      render Player.find(@stat.player_id)
    else
      flash[:error] = 'Something went wrong with removing this stat. Please try again.'
      render Player.find(@stat.player_id)
    end
  end
end

