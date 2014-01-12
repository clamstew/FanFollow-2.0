class Ride < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :seats
end
