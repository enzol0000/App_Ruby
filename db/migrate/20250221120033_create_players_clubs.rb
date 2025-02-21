class CreatePlayersClubs < ActiveRecord::Migration[8.0]
  def change
    create_table :players_clubs do |t|
      t.references :players, null: false, foreign_key: true
      t.references :clubs, null: false, foreign_key: true

      t.timestamps
    end
  end
end
