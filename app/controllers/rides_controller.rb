class RidesController < ApplicationController
 
  def show
  	@ride = Ride.find(params[:ride_id])
  	@driver = @ride.driver
    # May need to add a migration for a ride's state of origin, in case of identical city names?
  end
  
  def new
    event = Event.find(params[:event_id])
    setup_new_ride(current_user, event)
    # 
  end

  def create
    # @ride = Ride.new(ride_params)
    @ride
    @ride.title = ride_params[:title]
    @ride.origin = ride_params[:origin]
    @ride.max_seats = ride_params[:max_seats]
    @ride.price_per_seat = ride_params[:price_per_seat]
    @ride.image = ride_params[:image]
    # @ride.user_id = ride_params[:user_id]
    # @ride.event_id = ride_params[:event_id]
    @ride.departure_time_local = ride_params[:departure_time_local]

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
