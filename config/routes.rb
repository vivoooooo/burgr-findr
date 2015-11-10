Rails.application.routes.draw do

   root :to => 'home#index'

 get 'restaurants/search' => 'restaurants#search'

 get '/restaurants/results' => 'restaurants#results'

  get '/restaurants/all' => 'restaurants#all'

 post 'restaurants/location' => 'restaurants#location', as: 'search_post'



 get '/maps' => 'maps#index'

 post '/maps/mapsearch' => 'maps#search'

 post '/maps/coord' => 'maps#coord'



 resources :users

 resources :restaurants do
 	resources :reviews 
 end


 get 'auth/facebook/callback', to: "sessions#create"


 delete 'sign_out', to: "sessions#destroy", as: 'sign_out'

end
