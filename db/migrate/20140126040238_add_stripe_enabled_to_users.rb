class AddStripeEnabledToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :stripe_enabled, :boolean, default: false
  end
end
