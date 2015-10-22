Rails.application.routes.draw do
  # get 'sessions/create'

  # get 'sessions/destroy'

   root :to => 'home#index'

 get 'restaurants/search' => 'restaurants#search'

 post 'restaurants/location' => 'restaurants#location', as: 'search_post'

 resources :users

 resources :restaurants do
 	resources :reviews 
 end



  # get '/restaurants/results' => 'restaurants#results'



 get 'auth/facebook/callback', to: "sessions#create"



 delete 'sign_out', to: "session#destroy", as: 'sign_out'

end
