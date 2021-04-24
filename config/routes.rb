Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :show, :new, :create] do
    resources :reviews, only: [ :new, :create]
  end
  resources :reviews, only: [:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
