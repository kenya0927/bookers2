Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "home/about" =>"homes#about",as:"about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :books, only: [:new, :index, :create, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update,:create]
end
