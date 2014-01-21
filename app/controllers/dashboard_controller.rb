class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def show

  	@driving = Ride.where(driver: current_user)
  end

end