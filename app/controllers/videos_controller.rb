class VideosController < ApplicationController
  def new
  @vid = Video.new
  end
  def create
  @vid = Video.new(video_params)
    @vid.save
    redirect_to @vid
  end
  def index
    @videos = Video.all
  end
  def show
    @vid = Video.find(params[:id])
  end

  private
  def video_params
    params.require(:video).permit(:title, :description, :source)
  end

end
