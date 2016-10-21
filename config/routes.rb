Rails.application.routes.draw do
  devise_for :users
  resources :groups
  resources :teams
  resources :scouts

  root 'welcome#index'

end
