class AddStartToEvents < ActiveRecord::Migration
  def change
	  add_column :events, :start_datetime_local, :datetime
	 	add_column :events, :end_datetime_local, :datetime
	 	add_column :events, :start_datetime_utc, :datetime
	 	add_column :events, :end_datetime_utc, :datetime
  end
end
