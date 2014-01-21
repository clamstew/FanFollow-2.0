class UsersController < ApplicationController
  
  def show
  	@params = params
  	@user = User.find(@params[:user_id])
    
  	# Do a quick role check
    if @user.rides.count > 0
      @role = 'Driver'
	  else
      @role ='Passenger'
	  end
    render :layout => 'application'
  end

end