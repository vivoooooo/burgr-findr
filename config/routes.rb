Rails.application.routes.draw do

   root :to => 'home#index'

 get 'restaurants/search' => 'restaurants#search'

 post 'restaurants/location' => 'restaurants#location', as: 'search_post'

 resources :users

 resources :restaurants do
 	resources :reviews 
 end


 get 'auth/facebook/callback', to: "sessions#create"


 delete 'sign_out', to: "sessions#destroy", as: 'sign_out'

end
