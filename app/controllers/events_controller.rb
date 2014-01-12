class EventsController < ActionController::Base
  def show
  	@params = params
  	@event = Event.find(params[:event_id]);
    @title = @event.title
    @venue = @event.venue
    @category = @event.category
    @city = @event.city
    @state = @event.state
    @country = @event.country
    @url = @event.url
    render :layout => 'application'
  end

end
