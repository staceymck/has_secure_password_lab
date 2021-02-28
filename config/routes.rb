Rails.application.routes.draw do
  resources :users, only: [:new, :show, :create]
  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
