Rails.application.routes.draw do

  resources :shopping_list_item, only: [] do
    collection do
      patch "sort"
    end
  end

  root "foodbank#index"

  resources :foodbank, only: ["index", "show"] do
    collection do
      post "search"
    end
  end

  devise_for :users

  namespace :user do
    root to: "user#index"

  end

end
