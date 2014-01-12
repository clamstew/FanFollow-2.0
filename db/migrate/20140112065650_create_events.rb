class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.string :city
      t.string :state
      t.string :country
      t.string :category
      t.string :url
      t.datetime :datetime_local
      t.datetime :datetime_utc

      t.timestamps
    end
  end
end
