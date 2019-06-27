class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.references :game, foreign_key: true
      t.integer :playerno

      t.timestamps
    end
  end
end
