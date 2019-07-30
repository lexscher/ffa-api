class FriendSerializer
  include FastJsonapi::ObjectSerializer
  attributes :friender_id, :friendee_id
  belongs_to :athlete
  belongs_to :athlete
end
