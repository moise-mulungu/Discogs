class AddReleasedOnToAlbums < ActiveRecord::Migration[7.0]
  def change
    add_column :albums, :released_on, :date
  end
end
