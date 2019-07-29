class Friend < ApplicationRecord
  belongs_to :friender, foreign_key: :friend_1, class_name: 'Athlete'
  belongs_to :friendee, foreign_key: :friend_2, class_name: 'Athlete'
end
