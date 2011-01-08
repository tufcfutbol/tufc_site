class NewslettersController < ApplicationController

  before_filter :authenticate, :only =>[:edit,:new,:create,:update,:destroy]

  # GET /newsletters
  def index
    @newsletters = Newsletter.order('created_at DESC').paginate(:page => params[:page],:per_page => 3)
  end

  # GET /newsletters/1
  def show
    @newsletter = Newsletter.find(params[:id])
  end

  # GET /newsletters/new
  def new
    @newsletter = Newsletter.new
  end

  # GET /newsletters/1/edit
  def edit
    @newsletter = Newsletter.find(params[:id])
  end

  # POST /newsletters
  def create
    @newsletter = Newsletter.new(params[:newsletter])
    if @newsletter.save
      flash[:success] = 'Newsletter Successfully created'
      redirect_to @newsletter
    else
      flash[:error] = 'There was a problem creating your newsletter.'
      redirect_to newsletters_path
    end
  end

  # PUT /newsletters/1
  def update
    @newsletter = Newsletter.find(params[:id])
    @newsletter.entry = params[:newsletter][:entry]
    @newsletter.authored_by = params[:newsletter][:authored_by]

    if @newsletter.save
      flash[:success] = 'Newsletter update successful.'
      redirect_to @newsletter
    else
      flash[:error] = 'Something went wrong when updating this newsletter'
      redirect_to edit_newsletter_path(@newsletter.id)
    end
  end

  # DELETE /newsletters/1
  def destroy
    @newsletter = Newsletter.find(params[:id])
    if @newsletter.destroy
      flash[:success] = 'Newsletter Successfully Removed'
      redirect_to newsletters_path
    else
      flash[:error] = 'Something went wrong when deleting this newsletter'
      redirect_to newsletters_path
    end

  end
end

