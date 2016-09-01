Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#show"
  resources :users, only: [:new, :show]
  resources :repositories, only:[:index, :show, :create]

  get '/auth/github', as: :github_login
  get '/auth/github/callback', to: 'sessions#create'
  get "/signout" => "sessions#destroy", :as => :signout
end
