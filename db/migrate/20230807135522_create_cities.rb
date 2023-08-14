class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name_city
      t.string :socr_city
      t.string :gni_city

      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
