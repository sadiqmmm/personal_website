class SongsController < ApplicationController

  before_filter :authenticate_user!, except: :index
  before_filter :administrator, except: :index

  def index
    @songs = Song.order("created_at DESC").paginate(page: params[:page], per_page: 8)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params[:song])
    if @song.save
      flash[:success] = "#{@song.artist} - #{@song.title} has been added to your collection succesfully!"
      redirect_to songs_path
    else
      render "new"
    end
  end

end
