Rails.application.routes.draw do
  resources :posts, only: [:new, :create, :show, :index, :update, :edit]
  resources :authors, only: [:new, :create, :show, :index, :update]


end
