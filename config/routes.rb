Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  resources :users
  delete '/users/:id', to: 'users#destroy', as: 'destroy_user_account'

  # LIST
  patch "/lists/:id", to:"lists#update", as:"update_lists"
  delete "/users/:user_id/lists/:id", to: "lists#destroy", as: "destroy_lists"
  post "/lists/new", to:"lists#create", as:"create_lists"
  resources :lists

  # SHOP
  delete "/shops/:id", to: "shops#destroy", as: "destroy_shops"
  post "/shops/new", to:"shops#create", as:"create_shops"
  resources :shops

  # FOLLOW
  post "follow/:id", to: "relationships#follow", as: "follow"
  post "unfollow/:id", to: "relationships#unfollow", as: "unfollow"
  get "following/:id", to: "users#following", as: "following"
  get "followers/:id", to: "users#followers", as: "followers"

  # SEARCH
  get "search", to: "users#search"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
