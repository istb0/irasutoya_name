Rails.application.routes.draw do
  root 'illustrations#index'

  resources :illustrations, only: %i[index show] do
    resources :titles, only: %i[create], shallow: true
  end
end
