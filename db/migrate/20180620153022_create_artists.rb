class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :artist_name, null: false
      t.string :passport_name
      t.string :email
      t.string :phone
      t.string :website
      t.text :address
      t.string :genre

      t.timestamps
    end
  end
end
