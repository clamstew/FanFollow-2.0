class RidesController < ActionController::Base
 
  def show
  	@params = params
  	@rides = Ride.all
  	@ride = Ride.find(params[:ride_id])
  	@title = @ride.title
  	@local_start = @ride.departure_time_local
  	@max_seats = @ride.max_seats
  	@price = @ride.price_per_seat
  	@city = @ride.origin
  	@driver = @ride.user
  	# user_id = @ride.user_id
  	# @driver = User.find(user_id)
  	# @riders = @ride.
    render :layout => 'application'
  end

end