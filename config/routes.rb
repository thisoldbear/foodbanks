Rails.application.routes.draw do

  root "foodbank#index"

  resources :foodbanks, only: ["index", "show"]

  devise_for :users

  namespace :user do
    root to: "user#index"
  end

end
