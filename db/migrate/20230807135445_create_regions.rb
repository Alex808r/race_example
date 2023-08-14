class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :name_region
      t.string :socr_region
      t.string :gni_region

      t.timestamps
    end
  end
end
