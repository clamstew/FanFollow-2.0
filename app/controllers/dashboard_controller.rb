class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def show
  	@user = current_user
  	@driving = current_user.ride_offers
  end

end