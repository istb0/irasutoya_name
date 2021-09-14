Rails.application.routes.draw do
  root 'illustrations#index'

  resources :illustrations, only: %i[index show]
end
