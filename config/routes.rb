Rails.application.routes.draw do
  devise_for :users
  resources :home, only: :index
  resources :libraries
  resources :books, only: [:show, :index] do
    resources :reviews
  end

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
