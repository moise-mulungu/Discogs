# frozen_string_literal: true

class Artist < ApplicationRecord
  belongs_to :genre
  has_many :albums, dependent: :destroy

  validates :name, presence: true
  validates :genre_id, presence: true
  validates :country, presence: true
  validates :number_of_albums, presence: true
end
