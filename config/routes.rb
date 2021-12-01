Rails.application.routes.draw do
  devise_for :users
  root to: 'planets#index'
  resources :planets, only: [:index, :show, :edit, :update]
end
