Blog::Application.routes.draw do
  devise_for :users

  resources :entries

  namespace :admin do
    resources :entries
  end

  root :to => "root#index"
end
