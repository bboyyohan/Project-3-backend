Rails.application.routes.draw do
  resources :matches
  resources :users 
  get 'users/:id/matches', to: 'matches#getUserMatches'
  # match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
