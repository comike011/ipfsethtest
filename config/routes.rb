Rails.application.routes.draw do
  devise_for :users

  resources :user_assets, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'user_assets#index'
end
