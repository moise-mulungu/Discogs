class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @artists.album_id = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
  end

  def album_params
    params.require(:album).permit(:name, :released_year, :number_of_songs, :artist_id)
  end
end
