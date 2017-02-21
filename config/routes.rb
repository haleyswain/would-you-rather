Rails.application.routes.draw do
  root :to => 'choices#index'
  resources :choices, :except => [:edit] do
    resources :votes, :except => [:edit, :index, :destroy, :show, :new]
  end
end
