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
    @artist = Artist.new(title: "...", body: "...")

    if @artist.save
      redirect_to @artist
    else
      render :new, status: :unprocessable_entity
    end
  end
end
