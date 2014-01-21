class RidesController < ApplicationController
 
  def show
  	@ride = Ride.find(params[:id])
  	@driver = @ride.driver
    # May need to add a migration for a ride's state of origin, in case of identical city names?
  end
  
  def new
    @event = Event.find(params[:event_id])
    @ride = @event.rides.new(user_id: current_user)
  end

  def create
    @ride = Ride.new(ride_params)

    if @ride.save
      redirect_to root_path
    end
  end


  def edit
    @ride = Ride.find(params[:id])
  end

  protected
  def ride_params
    params.require(:ride).permit(:title, :origin, :max_seats, :price_per_seat, :image, :user_id, :event_id, :departure_time_local)
  end

end
