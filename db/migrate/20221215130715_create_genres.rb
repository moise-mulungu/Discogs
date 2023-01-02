# frozen_string_literal: true

# Style/Documentation: Missing top-level class documentation comment.
class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.string :name

      t.timestamps
    end
  end
end
