class SuggestionsController < ApplicationController

  def event_suggestions
  	@suggestions = Event.fuzzy_search(name: params[:q])
  end

end