class Ride < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  belongs_to :driver, class_name:"User", foreign_key:"user_id"
  has_many :seats
  has_many :passengers, :through => :seats, :source =>:user
end
