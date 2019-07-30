class FriendSerializer
  include FastJsonapi::ObjectSerializer
  attributes :friender_id, :friendee_id

end
