class SuggestionsController < ApplicationController

  def event_suggestions
  	@suggestions = Event.fuzzy_search(title: params[:q])
  end

end