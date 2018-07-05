class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.references :artist, foreign_key: true
      t.string :manager_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
