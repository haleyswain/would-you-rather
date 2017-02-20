Rails.application.routes.draw do
  root :to => 'choices#index'
  resources :choices, :except => [:edit]
end
