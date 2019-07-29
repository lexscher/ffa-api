class Athlete < ApplicationRecord
    has_many :routines
    has_many :favorites
    has_many :routines, through: :favorites

    has_many :friended_athletes, foreign_key: :friender_id, class_name: 'Friend'
    has_many :friendees, through: :friended_athletes

    has_many :friending_athletes, foreign_key: :friendee_id, class_name: 'Friend'
    has_many :frienders, through: :friending_athletes

    # Get all friendEES and friendERS
    def friends
        all_friends = []
        all_friends << self.frienders  
        all_friends << self.friendees
        all_friends.flatten
    end
end
