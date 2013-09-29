class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :year
      t.string :version
      t.string :publisher
      t.string :cabinet_type
      t.string :genre
      t.integer :num_of_players

      t.timestamps
    end
  end
end
