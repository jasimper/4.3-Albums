class Album < ActiveRecord::Base
  validates :title, :genre, :artist, :length, presence: true
  validates :title, :genre, :artist, length: { minimum: 1 }
  validates :length, numericality: { greater_than: 0 }
  validates :title, uniqueness: { scope: :artist }
end
