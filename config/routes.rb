Rails.application.routes.draw do
  root 'offers#favorite'
  devise_for :users
  resources :users
  resources :offers
  get "latest", to: "offers#latest"
end
