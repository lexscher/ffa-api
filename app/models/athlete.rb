class Athlete < ApplicationRecord
    has_many :routines, dependent: :destroy

    has_many :friended_athletes, foreign_key: :friender_id, class_name: 'Friend', dependent: :destroy
    has_many :friendees, through: :friended_athletes, dependent: :destroy

    has_many :friending_athletes, foreign_key: :friendee_id, class_name: 'Friend', dependent: :destroy
    has_many :frienders, through: :friending_athletes, dependent: :destroy

    # Get all friendEES and friendERS
    def friends
        all_friends = []
        all_friends << self.frienders  
        all_friends << self.friendees
        all_friends.flatten
    end
end
