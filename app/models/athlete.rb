class Athlete < ApplicationRecord
    has_many :routines
    has_many :favorites
    has_many :routines, through: :favorites

    has_many :friended_athletes, foreign_key: :friend_1, class_name: 'Friend'
    has_many :friendees, through: :friended_athletes

    has_many :friending_athletes, foreign_key: :friend_2, class_name: 'Friend'
    has_many :frienders, through: :friending_athletes
end
