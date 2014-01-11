class HomeController < ActionController::Base
  def landing_page
    render :layout => 'application'
  end
end