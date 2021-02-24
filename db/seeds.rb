# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User data

User.create(username: "alex", password_digest: "abc", picture: "cnn.com")

# Country Data from API

res = RestClient.get("https://travelbriefing.org/countries.json")

json = res.body

country_hash = JSON.parse(json)

country_hash.each do |country|
  new_country = Country.create(
    name: country["name"],
    url: country["url"]
    # continent: country["url"]["continent"],
    # vaccinations: country["url"]["vaccinations"],
    # water: country["url"]["water"],
    # currency: country["url"]["currency"],
    # plugs: country["url"]["plugs"]
  )
end

# List of countries that are on a favorite list

CountryFavorite.create(user_id: 1, country_id: 1)

# List of user comments and the associate country

CountryComment.create(user_id: 1, country_id: 1, text: "Love it there", rating: 10)

