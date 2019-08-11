Rails.application.routes.draw do
  devise_for :users
  resources :dslists
  resources :contacts
  resources :posts
  get '/' => 'home#index'
  get '/about' => 'home#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
