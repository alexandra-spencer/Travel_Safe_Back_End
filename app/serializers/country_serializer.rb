class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :continent, :vaccinations, :water, :currency, :plugs
  has_many :country_comments
  has_many :country_favorites
end
