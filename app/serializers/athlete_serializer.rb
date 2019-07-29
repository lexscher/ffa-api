class AthleteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :email, :password_digest
  has_many :frienders
  has_many :friendees
end
