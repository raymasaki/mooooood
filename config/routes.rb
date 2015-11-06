Rails.application.routes.draw do

  resources :users
  resources :moods, only: [:index, :new, :create, :destroy]

  root 'moods#index'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

end
