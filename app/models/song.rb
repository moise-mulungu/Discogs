# frozen_string_literal: true

class Song < ApplicationRecord
  belongs_to :album

  validates :title, presence: true
  validates :album_id, presence: true
end
