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
    @artist = Artist.find(params[:artist_id])
    @album = @artist.albums.create(album_params)
    redirect_to artist_path(@artist)
  end

  def album_params
    params.require(:album).permit(:name, :released_year, :number_of_songs, :artist_id)
  end
end
