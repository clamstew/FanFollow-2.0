class EventsController < ApplicationController
  def show
  	@params = params
    # @events = Event.all
  	@event = Event.find(params[:event_id]);
    @rides = @event.rides
    @ride = @event.rides.new

  end

  def show_all
  	@params = params
  	@search_string = params[:search_string]
  	@events = Event.all
  	# @search_similiar = @event.where
    render :layout => 'application'

  end

end
