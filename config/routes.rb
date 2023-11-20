Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  devise_for :users
  root to: "pages#home"
  get 'pages/home', to: 'pages#home', as: :home
  get 'pages/test', to: "pages#test", as: :test
  get 'pages/nktest', to: "pages#test", as: :nktest
  get 'pages/components', to: "pages#components", as: :components
  resources :bookings
  resources :boats
end
