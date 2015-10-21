Rails.application.routes.draw do
  # get 'sessions/create'

  # get 'sessions/destroy'

   root :to => 'home#index'


 resources :users

 resources :restaurants do
  resources :reviews 
end

 get 'auth/facebook/callback', to: "sessions#create"

 delete 'sign_out', to: "session#destroy", as: 'sign_out'

end
