class HomeController < ActionController::Base
 
  def show
  	@params = params
  	@rides = Ride.all
  	@ride = Ride.find(params[:ride_id])
    render :layout => 'application'
  end

end