Rails.application.routes.draw do
  devise_for :users
  resources :dslists
  resources :contacts
  resources :posts
  get '/' => 'home#index'
  get '/about' => 'home#about'
  post '/posts/:post_id' =>"comments#create"
  delete '/posts/:post_id/comments/:id' =>"comments#destroy"
  post '/posts/:post_id/comments/:id' => 'comments#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
