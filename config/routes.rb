Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :work_spaces
  resources :bookings

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :work_spaces, only: [:new, :create]
  resources :bookings
  # Defines the root path route ("/")
  # root "articles#index"
end
