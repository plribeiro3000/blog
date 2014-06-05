Blog::Application.routes.draw do
  #devise_for :users

  resources :entries

  resources :users, except: [:edit, :update, :show]

  root :to => "root#index"
end
