class CreateClubs < ActiveRecord::Migration[8.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :image
      t.string :city
      t.text :description
      t.string :palmares
      t.integer :ranking

      t.timestamps
    end
  end
end
