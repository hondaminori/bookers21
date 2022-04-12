Rails.application.routes.draw do
  devise_for :users
  resources :users, olny[:index, :show, :edit]
  resources :books, only[:new, :index, :show, :edit]
end
