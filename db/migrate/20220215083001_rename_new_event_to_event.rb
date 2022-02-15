class RenameNewEventToEvent < ActiveRecord::Migration[6.1]
  def change
    rename_table :new_events, :events
  end
end
