class AddReferencesToEventCategory < ActiveRecord::Migration[6.1]
  def change
    add_reference :event_categories, :event_category_group, null: false, foreign_key: true
  end
end
