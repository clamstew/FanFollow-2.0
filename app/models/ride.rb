class Ride < ActiveRecord::Base
    belongs_to :event

    belongs_to :driver, class_name: "User", foreign_key: "user_id"
    has_many :seats
		has_many :passengers, :through => :seats, :source => :user
	def attendees
    User.where(id: (seats.select(:user_id).map(&:user_id) << user_id))
  end
end