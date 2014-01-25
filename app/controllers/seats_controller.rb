class SeatsController < ApplicationController
 
 	# GET /seats/new
  def new
  	# Add user-auth here
    @seat = Seat.new
    @ride = Ride.find(params[:ride_id])

    respond_to do |format|
      format.html # new.html.erb
    end

  end

  # POST /articles
  def create
  	# Add authentication here
  	@user = current_user

    # @seat = @user.seats.new(:ride_id => seat_params[:ride_id])

    @seat = @user.seats.new(:ride_id => seat_params[:ride_id])

    respond_to do |format|
      if @seat.save 
        format.js {render layout: false}
      else 
        format.js
      end
    end

  end

  protected
  def seat_params
    # params[:ride_id][:keys_attributes] = [{
    #   "ride_id" => 
    #   }]
    params.require(:seat).permit(:ride_id)
  end

end
