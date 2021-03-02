class CountryFavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :country_id
  belongs_to :user
  belongs_to :country
end
