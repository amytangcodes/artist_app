class CreateArtistTours < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_tours do |t|
      t.integer :artist_id
      t.integer :tour_id
    end
  end
end
