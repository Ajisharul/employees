Rails.application.routes.draw do
  resources :lists
  resources :employeelists
  #get 'home/index'
  get 'home/about'
  root 'home#index'

end
