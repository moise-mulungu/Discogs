
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
    @artist = Artist.new(name: "...", country: "...")

    if @artist.save
      redirect_to @artist
    else
      render :new, status: :unprocessable_entity
    end
  end
end
