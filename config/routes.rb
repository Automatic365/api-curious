Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#new"
  resources :users, only: [:new, :show]
  get "/signout" => "sessions#destroy", :as => :signout
  get '/auth/github', as: :github_login
  get '/auth/github/callback', to: 'sessions#create'
end
