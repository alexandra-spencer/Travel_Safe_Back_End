class CreateCountryFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :country_favorites do |t|
      t.integer :user_id
      t.integer :country_id

      t.timestamps
    end
  end
end
