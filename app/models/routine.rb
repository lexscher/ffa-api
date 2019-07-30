class Routine < ApplicationRecord
  belongs_to :athlete
  has_many :workouts, dependent: :destroy
end
