class Tour < ApplicationRecord
  has_many :artist_tours
  has_many :artists, through: :artist_tours

  validates :artists, presence: true

  def total_artists
    artists.length
  end
end
