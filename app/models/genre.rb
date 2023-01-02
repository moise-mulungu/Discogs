# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :artists, dependent: :destroy
  validates :name, presence: true
end
