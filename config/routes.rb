Rails.application.routes.draw do
  devise_for :users
  root 'texts#index'
  resources :users, only: [:edit, :update]
    resources :tweets, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
