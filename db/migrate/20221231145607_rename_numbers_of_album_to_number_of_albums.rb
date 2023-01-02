# frozen_string_literal: true

# Style/Documentation: Missing top-level class documentation comment.
class RenameNumbersOfAlbumToNumberOfAlbums < ActiveRecord::Migration[7.0]
  def change
    rename_column :artists, :numbers_of_album, :number_of_albums
  end
end
