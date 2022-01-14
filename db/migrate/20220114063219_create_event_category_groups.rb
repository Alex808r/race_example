class CreateEventCategoryGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :event_category_groups do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
