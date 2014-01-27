Fanfollow::Application.routes.draw do

  resources :dashboard
  # resources :rides

  authenticated :user do
    root :to => "dashboard#show", :as => 'authenticated_root'
  end

  get '/users/show/:user_id' => 'users#show', :as => 'show_user'
  
  get '/events/show/:event_id' => 'events#show'
  
  get '/rides/show/:ride_id' => 'rides#show', :as => 'show_ride'
  get '/rides/new' => 'rides#new', :as => 'new_ride'
  post '/rides' => 'rides#create'

  devise_for :users
  
  root :to =>'home#landing_page'
  

  get '/suggestions/event_suggestions/:q' => 'suggestions#event_suggestions'

end
