Rails.application.routes.draw do
  devise_for :users
  resources :groups do
    resources :investments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "groups#index"
end
