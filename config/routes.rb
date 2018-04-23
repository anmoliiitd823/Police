Rails.application.routes.draw do
  resources :places
  devise_for :users
  resources :criminals 
  root to: "criminals#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
