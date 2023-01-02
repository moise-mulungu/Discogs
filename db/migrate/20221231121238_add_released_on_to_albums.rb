# frozen_string_literal: true

# Style/Documentation: Missing top-level class documentation comment.
class AddReleasedOnToAlbums < ActiveRecord::Migration[7.0]
  def change
    add_column :albums, :released_on, :date
  end
end
