Rails.application.routes.draw do
  resources :comments
  root 'posts#index'
  delete '/logout', to: 'sessions#logout_user'
  resources :sessions, only: %i[new create]
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
