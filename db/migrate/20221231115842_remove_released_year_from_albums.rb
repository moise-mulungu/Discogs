class RemoveReleasedYearFromAlbums < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :released_year, :date
  end
end
