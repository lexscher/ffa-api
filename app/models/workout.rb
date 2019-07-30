class Workout < ApplicationRecord
  belongs_to :routine
  has_many :exercises, dependent: :destroy
end
