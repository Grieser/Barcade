class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :score
      t.date :date
      t.boolean :is_verified

      t.timestamps
    end
  end
end
