# frozen_string_literal: true

# Style/Documentation: Missing top-level class documentation comment.
class AddImageToArtists < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :image, :string
  end
end
