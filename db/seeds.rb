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

  country_name = country['name'].gsub(' ', '_')
  res = RestClient.get("https://travelbriefing.org/#{country_name}?format=json")
  json = res.body
  country_info = JSON.parse(json)


  # vaccinationsStr = ""
  # i = 0
  # while country_info['vaccinations'][i] < country_info['vaccinations'].count do
  #   vaccinationsStr += country_info['vaccinations'][i]['name']
  # end

 vaccines = if country_info['vaccinations'].count != 0
    country_info['vaccinations'][0]['name']
  else
    "no vaccines required"
  end

  plugs = if country_info['electricity']['plugs'].count != 0
    country_info['electricity']['plugs'][0][0]
  else
    "no plugs"
  end


  new_country = Country.create(
    name: country['name'],
    url: country['url'],
    continent: country_info['names']['continent'],
    vaccinations: vaccines,
    water: country_info['water']['short'],
    currency: country_info['currency']['name'],
    plugs: plugs
  )

end


# List of countries that are on a favorite list
CountryFavorite.create(user_id: 1, country_id: 1)


# List of user comments and the associate country
CountryComment.create(user_id: 1, country_id: 1, text: "Love it there", rating: 10)

