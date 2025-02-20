class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :pseudonyme
      t.string :photo

      t.timestamps
    end
  end
end
