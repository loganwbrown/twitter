Twitter::Application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations'}
  root "static_pages#welcome"

  resources :tweets, only: [:create, :destroy]
  resources :users, only: [:index, :show]

  get "/about" => "static_pages#about", as: :about
  get "/terms-of-service" => "static_pages#tos", as: :terms_of_service
  get "/privacy-policy" => "static_pages#privacy", as: :privacy_policy

end
