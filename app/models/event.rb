class Event < ActiveRecord::Base
  has_many :rides
  has_many :users, through: :rides
  has_many :seats, through: :rides
end
