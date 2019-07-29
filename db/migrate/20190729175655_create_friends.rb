class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.integer :friend_1
      t.integer :friend_2

      t.timestamps
    end
  end
end
