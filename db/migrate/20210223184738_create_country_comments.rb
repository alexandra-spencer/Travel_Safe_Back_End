class CreateCountryComments < ActiveRecord::Migration[6.1]
  def change
    create_table :country_comments do |t|
      t.integer :user_id
      t.integer :country_id
      t.string :text
      t.integer :rating

      t.timestamps
    end
  end
end
