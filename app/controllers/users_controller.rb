class UsersController < ActionController::Base
  
  def show
  	@params = params
  	@user = User.find(params[:user_id])
    @first_name = @user.first_name
    @city = @user.city
    @state = @user.state
    @country = @user.country
  	# Do a quick role check
  	if @user.role != nil 
	    @role = @user.role
	  else
	    @role ='Passenger'
	  end
    render :layout => 'application'
  end

end