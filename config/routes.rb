Rails.application.routes.draw do
# config/routes.rb
  root 'sessions#login'
  get '/home', to: 'pages#index', as: 'home' 
  get '/pages', to: 'pages#index'
  
  get '/easy', to: redirect('/ayeshahtmls/easy.html')
  get '/medium', to: redirect('/ayeshahtmls/medium.html')
  get '/hard', to: redirect('/ayeshahtmls/hard.html')
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :cardios, only: [:new, :create]
  resources :steps, only: [:new, :create]
  resources :water_intakes, only: [:new, :create]
  resources :calories, only: [:new, :create]
  resources :stretchings, only: [:new, :create]
  resources :treadmills, only: [:new, :create]
  resources :strengths, only: [:new, :create]
  resources :weights, only: [:new, :create]
  resources :heights, only: [:new, :create]
  resources :ages, only: [:new, :create]

  get '/calories/new', to: 'calories#new', as: 'new_calorie'
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'
end
