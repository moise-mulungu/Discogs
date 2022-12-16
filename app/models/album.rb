class Album < ApplicationRecord
  belongs_to :artist
  
  validates :name, presence: true
  validates :artist_id, presence: true
  validates :number_of_songs, presence: true
  validates :release_date, presence: true
end
