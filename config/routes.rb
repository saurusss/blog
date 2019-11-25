Rails.application.routes.draw do
  resources :assetlists
 
  resources :stores
  get 'searches/result'
  devise_for :users
  resources :dslists
  resources :contacts
  resources :posts
  get '/' => 'home#index'
  get '/about' => 'home#about'
  post '/posts/:post_id' =>"comments#create"
  delete '/posts/:post_id/comments/:id' =>"comments#destroy"
  post '/posts/:post_id/comments/:id' => 'comments#update'
  #get '/stores/search '=> 'stores#search'
  post '/stores/search'=> 'stores#search'
  get  '/assetlists/search/:store_id' => 'assetlists#search'
  get  '/assetlists/new_selstore/:store_id => assetlists#new_selstore'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
