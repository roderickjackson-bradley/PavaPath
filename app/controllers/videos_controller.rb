class VideosController < ApplicationController

  def index
    #Code Smell! Refactor this!
    @videos = Video.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 12)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
