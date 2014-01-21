class RidesController < ApplicationController
 
  def show
  	@params = params
  	@rides = Ride.allgit 
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
    render :layout => 'application'
  end
  
  def new
    @event_id = params[:event_id]
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    if @ride.save
      redirect_to @ride
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