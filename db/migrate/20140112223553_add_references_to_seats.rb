class AddReferencesToSeats < ActiveRecord::Migration
 def change
    change_table :seats do |t|
      t.references :user
      t.references :ride
    end
  end
end
