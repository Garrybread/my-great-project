Rails.application.routes.draw do
  resources :libraries
  resources :books do
    resources :reviews
  end

  root 'libraries#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
