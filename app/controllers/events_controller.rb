class EventsController < ActionController::Base
 
  def show
  	@params = params
    @events = Event.all
  	@event = Event.find(params[:event_id]);
    @title = @event.title
    @venue = @event.venue
    @category = @event.category
    @city = @event.city
    @state = @event.state
    @country = @event.country
    @url = @event.url
    @tickets = @event.url
    @local_start = @event.start_datetime_local
    @local_end = @event.end_datetime_local
    @UTC_start = @event.start_datetime_utc
    @UTC_end = @event.end_datetime_utc

    # Rides to display
    @rides = @event.rides

    render :layout => 'application'
  end

  def show_all
  	@params = params
  	@search_string = params[:search_string]
  	@events = Event.all
  	# @search_similiar = @event.where
    render :layout => 'application'

  end

end
