Rails.application.routes.draw do
  get 'session/new'
  get 'users/new'
 root :to => "pages#home"
 resources :products, :only => [:index, :new, :create, :edit, :update]
end
