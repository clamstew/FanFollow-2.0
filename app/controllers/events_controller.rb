class EventsController < ApplicationController
  def show
  	@params = params
    # @events = Event.all
  	@event = Event.find(params[:event_id]);
    @rides = @event.rides

  end

  def show_all
  	@params = params
  	@search_string = params[:search_string]
  	@events = Event.all
  	# @search_similiar = @event.where
    render :layout => 'application'

  end

end
