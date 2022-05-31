Rails.application.routes.draw do
  resources :home, only: :index
  resources :libraries
  resources :books do
    resources :reviews
  end

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
