class AddInformationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location, :string
    add_column :users, :age, :integer
    add_column :users, :type, :string
  end
end
