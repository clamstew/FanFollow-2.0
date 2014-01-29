class Event < ActiveRecord::Base
  has_many :rides
 
	# loops through all the rides, gets their attendees (arrays)
	# and then flattens them, i.e. combines all indices into one array
	def all_attendees
		attendees = []
		rides.each do |ride|
			attendees << ride.attendees
		end
		attendees.flatten!
	end

end
