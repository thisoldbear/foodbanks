Rails.application.routes.draw do

  resources :shopping_list_item, only: [] do
    collection do
      patch :sort
    end
  end

  root "foodbank#index"

  resources :foodbanks, only: ["index", "show"]

  devise_for :users

  namespace :user do
    root to: "user#index"
  end

end
