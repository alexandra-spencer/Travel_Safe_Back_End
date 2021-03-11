class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :url
      t.string :continent
      t.string :vaccinations
      t.string :water
      t.string :currency
      t.string :exchange_rates
      t.string :plugs
      t.timestamps
    end
  end
end
