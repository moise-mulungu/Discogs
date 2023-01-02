# frozen_string_literal: true

# Style/Documentation: Missing top-level class documentation comment.
class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :country
      t.integer :numbers_of_album
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
