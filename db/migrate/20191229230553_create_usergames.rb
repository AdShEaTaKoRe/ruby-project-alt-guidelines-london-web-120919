class CreateUsergames < ActiveRecord::Migration[5.2]
  def change
    create_table :usergames do |t|
      t.integer :rating
      t.integer :game_id
      t.integer :user_id
      t.timestamp
    end
  end
end
