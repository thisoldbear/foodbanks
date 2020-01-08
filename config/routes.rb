Rails.application.routes.draw do

  root "public#index"

  devise_for :foodbanks

  namespace :foodbank do
    root to: "foodbank#index"
  end

end
