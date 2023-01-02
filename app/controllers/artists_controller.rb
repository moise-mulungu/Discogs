# frozen_string_literal: true

# Style/Documentation: Missing top-level class documentation comment.
class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @genre = Genre.find(params[:genre_id])
    @artist = @genre.artists.create(artist_params)
    redirect_to genre_path(@genre)

    # if @artist.save
    #   redirect_to @artist
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :country, :number_of_albums, :genre_id)
  end
end
