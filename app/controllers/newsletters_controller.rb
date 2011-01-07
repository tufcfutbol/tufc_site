class NewslettersController < ApplicationController
  # GET /newsletters
  # GET /newsletters.xml
  def index
    @newsletters = Newsletter.all
  end

  # GET /newsletters/1
  # GET /newsletters/1.xml
  def show
    @newsletter = Newsletter.find(params[:id])
  end

  # GET /newsletters/new
  # GET /newsletters/new.xml
  def new
    @newsletter = Newsletter.new
  end

  # GET /newsletters/1/edit
  def edit
    @newsletter = Newsletter.find(params[:id])
  end

  # POST /newsletters
  # POST /newsletters.xml
  def create
    raise params.inspect
    @newsletter = Newsletter.new(params[:newsletter])
    if @newsletter.save
      flash[:success] = 'Newsletter Successfully created'
      redirect_to newsletters_path(@newsletter.id)
    else
      flash[:error] = 'There was a problem creating your newsletter.'
      redirect_to new_newsletters_path
    end
  end

  # PUT /newsletters/1
  # PUT /newsletters/1.xml
  def update
    @newsletter = Newsletter.find(params[:id])

  end

  # DELETE /newsletters/1
  # DELETE /newsletters/1.xml
  def destroy
    @newsletter = Newsletter.find(params[:id])
    @newsletter.destroy
  end
end

