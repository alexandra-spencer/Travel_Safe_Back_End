class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :continent, :vaccinations, :water, :currency, :exchange_rates, :plugs
  has_many :country_comments
  has_many :country_favorites
end
