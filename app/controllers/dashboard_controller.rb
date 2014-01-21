class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def show
  	@driving = current_user.ride_offers
  end

end