class AddUserIdToRides < ActiveRecord::Migration
  def change
    change_table :rides do |t|
      t.references :user
    end
  end
end
