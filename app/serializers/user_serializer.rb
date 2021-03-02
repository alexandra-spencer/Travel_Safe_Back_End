class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :picture
  has_many :country_comments
  has_many :country_favorites
end
