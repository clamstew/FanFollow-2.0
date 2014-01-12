class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :title
      t.string :origin
      t.datetime :departure_time_local
      t.integer :max_seats
      t.string :image
      t.integer :price_per_seat

      t.timestamps
    end
  end
end
