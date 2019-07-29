class Favorite < ApplicationRecord
  belongs_to :athlete
  belongs_to :routine
end
