class CreateUsergames < ActiveRecord::Migration[5.2]
  def change
    create_table :user_games do |t|
      t.integer :rating, null: false, default: 0
      t.integer :game_id
      t.integer :user_id
      t.timestamp
    end
  end
end
