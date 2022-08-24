Rails.application.routes.draw do
  devise_for :users
  root to: "work_spaces#index"

  resources :work_spaces do
    resources :bookings, only: [:index, :new, :create]
  end

  resources :bookings, only: %i[show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
