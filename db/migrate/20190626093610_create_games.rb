class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :teamno
      t.string :teamname

      t.timestamps
    end
  end
end
