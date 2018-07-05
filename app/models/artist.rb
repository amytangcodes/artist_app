class Artist < ApplicationRecord
  has_many :artist_tours
  has_many :tours, through: :artist_tours

  validates :artist_name, presence: { message: "must be given please!"}, uniqueness: true
  validates :email, confirmation: { case_sensitive: false }
  
  # self.table_name = "performers"
  
end
