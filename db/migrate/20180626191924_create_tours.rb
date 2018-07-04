class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :name
      t.integer :number_shows
      t.string :artists

      t.timestamps
    end
  end
end
