
class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @genres.artist_id = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    # @artist = Artist.new(name: "...", country: "...")
    @artist = Article.new(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def artist_params
      params.require(:artist).permit(:name, :country, :numbers_of_album, :genre_id)
    end
end
