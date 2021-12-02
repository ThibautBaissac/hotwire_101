Rails.application.routes.draw do
  devise_for :users
  root to: 'planets#index'
  resources :planets, only: [:index, :show, :edit, :update] do
    collection do
      get :tabs
      get :telluric
      get :gas
    end
  end
end
