class CreatePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :image
      t.references :club, null: false, foreign_key: true
      t.integer :height
      t.string :draft
      t.string :post
      t.integer :min
      t.integer :ppg
      t.integer :reb
      t.integer :blk
      t.integer :stl

      t.timestamps
    end
  end
end
