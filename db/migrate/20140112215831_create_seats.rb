class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|

      t.timestamps
    end
  end
end
