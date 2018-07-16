Rails.application.routes.draw do
  root :to => "pages#homes"
  resources :products, :only => [:index, :new, :create, :edit, :update]
end
