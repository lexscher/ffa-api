class FriendSerializer
  include FastJsonapi::ObjectSerializer
  attributes :friender_id, :friendee_id

  attribute :friendship do |friend|
    {"friendship" => [
      "friender" => friend.friender,
      "friendee" => friend.friendee
      ]
    }
  end
end
