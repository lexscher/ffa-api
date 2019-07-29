class Friend < ApplicationRecord
  belongs_to: :friender, class_name: 'Athlete'
  belongs_to: :friendee, class_name: 'Athlete'
end
