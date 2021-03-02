class CountryCommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :country_id, :text, :rating
  belongs_to :user
  belongs_to :country
end
