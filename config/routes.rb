Rails.application.routes.draw do

  resources :images

  root :to => "pages#home"
  root to: 'images#index'
  resources :products, :products
  resources :users

  get '/login' => 'session#new' # login form
  post '/login' => 'session#create' # perform a login
  delete '/login' => 'session#destroy' # perform a log out

end
