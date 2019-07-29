class RemoveColumnsFromFriends < ActiveRecord::Migration[5.2]
  def change
    remove_column :friends, :friend_1
    remove_column :friends, :friend_2
  end
end
