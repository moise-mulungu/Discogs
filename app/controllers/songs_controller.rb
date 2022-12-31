class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @album.song_id = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(title: "...", album_id: "...")

    if @song.save
      redirect_to @song
    else
      render :new, status: :unprocessable_entity
    end
  end
end
