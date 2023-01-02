# frozen_string_literal: true

# Style/Documentation: Missing top-level class documentation comment.
class RemoveReleasedYearFromAlbums < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :released_year, :date
  end
end
