class HomeController < ActionController::Base
  def landing_page
  	@events = Event.all
  	@events_search = Hash.new
  	@events.each do |event|
  		id = event.id
  		@events_search[id] = event.title
  	end
    render :layout => 'application'
  end


end