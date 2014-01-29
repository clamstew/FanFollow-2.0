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
    @ride = Ride.find(seat_params[:ride_id])
    requested_seats = seat_params[:num_requested_seats].to_i

    success = {:message => "Successfully booked your ride!"}
    not_enough_seats = {:message => "Not enough seats available!"}
    save_error = {:message => "Serverside save error!"}

    if requested_seats > (@ride.max_seats - @ride.seats.count)
      puts 'too many seats requested'
      render :json => not_enough_seats, :status => :error
      # Return an error
    else
      count = 0
      requested_seats.times do
        @seat = @user.seats.new(:ride_id => seat_params[:ride_id])
        if @seat.save
          # @remaining_seats = @ride.max_seats - @ride.seats.count
          count += 1
          if count == requested_seats
            render :json => success, :status => :ok
            flash[:notice] = "Ride booked!"
          end
        else 
          render :json => save_error, :status => :error
        end
      end
      # respond_to do |format|
      #   if @seat.save 
      #     format.js {render layout: false}
      #   else 
      #     format.js
      #   end
      # end
    end

  end

  protected
  def seat_params
    # params[:ride_id][:keys_attributes] = [{
    #   "ride_id" => 
    #   }]
    params.require(:seat).permit(:ride_id, :num_requested_seats)
  end

end
