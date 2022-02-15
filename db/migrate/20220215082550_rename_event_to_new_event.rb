class RenameEventToNewEvent < ActiveRecord::Migration[6.1]
  def change
    rename_table :events, :new_events
  end
end
