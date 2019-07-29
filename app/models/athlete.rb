class Athlete < ApplicationRecord
    has_many :routines
    has_many :favorites
    has_many :routines, through: :favorites
end
