class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs, dependent: :destroy

  validates :name, presence: true
  validates :artist_id, presence: true
  validates :number_of_songs, presence: true
  validates :released_on, presence: true
end
