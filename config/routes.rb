Fanfollow::Application.routes.draw do

  resources :dashboard
  # resources :rides

  authenticated :user do
    root :to => "dashboard#show", :as => 'authenticated_root'
  end

  get '/users/show/:user_id' => 'users#show'
  
  get '/events/show/:event_id' => 'events#show'
  get '/events/show_all/:search_string' => 'events#show_all'
  
  get '/rides/show/:id' => 'rides#show'
  get '/rides/new' => 'rides#new', :as => 'new_ride'
  post '/rides' => 'rides#create'

  devise_for :users
  
  root :to =>'home#landing_page'

end
