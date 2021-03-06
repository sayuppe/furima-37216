Rails.application.routes.draw do
  get 'cards/new'
  devise_for :users
  root to: 'items#index'
  resources :items do
    resources :orders, only: [:index, :create, :show, :edit, :update]
  end
  resources :cards, only: [:new, :create]
end
