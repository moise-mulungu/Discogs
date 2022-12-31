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
    # @song = Song.new(title: "...", album_id: "...")
    @album = Album.find(params[:album_id])
    @song = @album.songs.create(song_params)

    if @song.save
      redirect_to @song
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  #   @song = Song.find(params[:id])
  # end

  # def update
  #   @song = Song.find(params[:id])

  #   if @song.update(song_params)
  #     redirect_to @song
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @song = Song.find(params[:id])
  #   @song.destroy
  #   redirect_to songs_path
  # end

  private
  def song_params
    params.require(:song).permit(:title, :album_id)
  end
end
