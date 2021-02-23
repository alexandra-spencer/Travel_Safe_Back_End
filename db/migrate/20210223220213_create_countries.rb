class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :continent
      t.string :weather_min
      t.string :weather_max
      t.string :vaccinations
      t.string :water
      t.string :currency
      t.string :us_dollar_rate
      t.string :outlet_type

      t.timestamps
    end
  end
end
