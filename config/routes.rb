Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:new, :index, :show, :edit]
end
