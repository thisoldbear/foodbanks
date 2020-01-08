Rails.application.routes.draw do

  root "foodbank#index"

  resources :foodbanks, only: ["index", "show"]
  resources :shopping_list_items, only: ["update"]

  devise_for :users
  namespace :user do
    root to: "user#index"
  end

end
