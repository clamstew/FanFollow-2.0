class RidesController < ApplicationController
 
  def show
  	@params = params
  	@rides = Ride.all
  	@ride = Ride.find(params[:id])
  	@title = @ride.title
  	@local_start = @ride.departure_time_local
  	@max_seats = @ride.max_seats
  	@price = @ride.price_per_seat
  	@city = @ride.origin
  	@driver = @ride.user
  	# user_id = @ride.user_id
  	# @driver = User.find(user_id)
  	@seats = Seat.all
  	@user = User.all
  end
  
  def new
    event = Event.find(params[:event_id])
    @ride = event.rides.new(user_id: current_user)
  end

  def create
    ride_params = params
    @ride = Ride.new(
      title: ride_params["ride"]["title"], 
      origin: ride_params["ride"]["origin"], 
      max_seats: ride_params["ride"]["max_seats"], 
      price_per_seat: ride_params["ride"]["price_per_seat"], 
      departure_time_local: ride_params["ride"]["departure_time_local"]
    )
    if @ride.save
      redirect_to root_path
    end
  end


  def edit
    @ride = Ride.find(params[:id])
  end

  protected
  def ride_params
    params.require(:ride).permit(:title, :origin, :max_seats, :price_per_seat, :image, :user_id)
  end





end