class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :nickname

      t.timestamps
    end
  end
end
