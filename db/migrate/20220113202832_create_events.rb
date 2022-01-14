class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.references :race, null: false, foreign_key: true
      t.references :event_category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
