Blog::Application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :entries
  end

  root :to => "root#index"
end
