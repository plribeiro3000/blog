Blog::Application.routes.draw do
  devise_for :users

  resources :entries

  root :to => "root#index"
end
