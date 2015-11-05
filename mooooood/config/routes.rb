Rails.application.routes.draw do

  resources :users
  resources :moods, only: [:index, :new, :create, :destroy]

  root 'moods#index'

end
