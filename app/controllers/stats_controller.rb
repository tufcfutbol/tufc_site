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
    @player = Player.find(params[:player_id])
  end

  # POST /stats
  # POST /stats.xml
  def create
    params[:stat][:player_id] = params[:player_id]
    @stat = Stat.new(params[:stat])
    @player = Player.find(params[:player_id])
    if !check_stat_period(@stat) #if this is false then the season is outside the editing period
      flash[:notice] = 'You can only create a stat within a season. You have tried to create a stat outside the available editing period.'
      render 'new'
      return
    end
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
    @player = Player.find(params[:player_id])
    if !check_stat_period(@stat) #if this is false then the season is outside the editing period
      flash[:notice] = 'You can only edit a stat within a season. You have tried to edit a stat outside the available editing period.'
      redirect_to @player
      return
    end

    if @stat.update_attributes(params[:stat])
      flash[:success] = 'Stat successfully updated'
      redirect_to @player
    else
      flash[:error] = 'Something went wrong please try again'
      render edit_player_stat_path(@player,@stat)
    end

  end

  # DELETE /stats/1
  # DELETE /stats/1.xml
  def destroy
    @stat = Stat.find(params[:id])
    if @stat.destroy
      flash[:success] = 'Stat successfully deleted.'
      redirect_to Player.find(params[:player_id])
    else
      flash[:error] = 'Something went wrong with removing this stat. Please try again.'
      redirect_to Player.find(params[:player_id])
    end
  end


  #This checks to see if the stat is within the editing period.
  #A fall season stat can only be edited in a fall season of the same year
  #The same goes for a spring stat
  #Currently the editing periods are as follows:
  #Fall Editing Period -- Months 8-12
  #Spring Editing Period -- Months 2-6
  def check_stat_period(stat)
    if stat.season == 'Fall'
      return Time.now.month > 8 && Time.now.month < 12
    end

    if stat.season == 'Spring'
      return Time.now.mont > 2 && Time.now.month < 6
    end
  end

end

