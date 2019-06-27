class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.references :team, foreign_key: true
      t.string :playername

      t.timestamps
    end
  end
end
