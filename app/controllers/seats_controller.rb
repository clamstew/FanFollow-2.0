class SeatsController < ApplicationController
 
 	# GET /seats/new
  def new
  	# Add user-auth here
    @seat = Seat.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end


end
