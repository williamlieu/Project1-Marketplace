Rails.application.routes.draw do
  root :to => "pages#home"
  resources :products, :only => [:index, :new, :create, :edit, :update]
end
