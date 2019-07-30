class AthleteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :email, :password_digest

  attribute :friends do |athlete| 
    friends_array = []
    friends_array << athlete.frienders
    friends_array << athlete.friendees
    friends_array.flatten
  end
end
