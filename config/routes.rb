Rails.application.routes.draw do

  root to: "foodbank#search"

  devise_for :foodbanks

  # namespace :foodbanks do
  #   root to: "foodbank#dashboard"
  # end

end
