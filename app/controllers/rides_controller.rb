class RidesController < ApplicationController
 
  def show
  	@ride = Ride.find(params[:ride_id])
  	@driver = @ride.driver
    @free_seats = @ride.max_seats - @ride.seats.count
    # May need to add a migration for a ride's state of origin, in case of identical city names?
  end
  
  def new
    @event = Event.find(params[:event_id])
    @ride = @event.rides.new(user_id: current_user)
  end

  # def create
  #   @ride = Ride.new(ride_params)

  #   if @ride.save
  #     redirect_to root_path
  #   end
  # end


  # POST /articles
  def create
    # Add authentication here
    @user = current_user
    # @ride = Ride.find(seat_params[:ride_id])
    max_seats = ride_params[:max_seats].to_i

    success = {:message => "Successfully created your ride!"}
    # not_enough_seats = {:message => "Not enough seats available!"}
    save_error = {:message => "Serverside save error!"}

  
     
    @ride = @user.rides.new(ride_params)
      if @ride.save
        render :json => success, :status => :ok
        flash[:notice] = "Have a great trip!"
      else 
        render :json => save_error, :status => :error
        flash[:notice] = "Oh oh, something went wrong!"
      end

  end




  def edit
    @ride = Ride.find(params[:id])
  end

  protected
  def ride_params
    params.require(:ride).permit(:title, :origin, :max_seats, :price_per_seat, :image, :event_id, :departure_time_local, :user_id)
  end

end
