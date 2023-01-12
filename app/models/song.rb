class Song < ApplicationRecord
  validates :name, presence: true
  validates :lyrics, presence: true
end
