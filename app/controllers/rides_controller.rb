class RidesController < ApplicationController
 
  def show
  	@ride = Ride.find(params[:id])
  	@driver = @ride.driver
    # May need to add a migration for a ride's state of origin, in case of identical city names?
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
