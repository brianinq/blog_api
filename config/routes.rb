Rails.application.routes.draw do
  resources :categories, only: [:create, :index, :show]
  resources :users, only: [:create]
  resources :blogs, only: [:index, :create, :show, :destroy, :update,] do
    resources :comments, only: [:create, :destroy]
  end
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
