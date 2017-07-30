Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]

  get '/users/:id/status/:status', to: 'users#update_status'
  get '/users/:id/location', to: 'users#update_location'
end