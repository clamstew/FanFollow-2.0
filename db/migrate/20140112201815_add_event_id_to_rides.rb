class AddEventIdToRides < ActiveRecord::Migration
  def change
    change_table :rides do |t|
      t.references :event
    end
  end
end
