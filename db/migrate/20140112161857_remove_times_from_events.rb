class RemoveTimesFromEvents < ActiveRecord::Migration
  def change
	 	remove_column :events, :datetime_utc
	 	remove_column :events, :datetime_local
  end
end
