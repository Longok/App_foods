Rails.application.routes.draw do
  get 'sessions/new'
  root "home#index"
  
  get '/sign-up', to: "users#new"
  post '/sign-up', to: "users#create"
  
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  resources :users
  resources :categories
  resources :products

  get 'cart', to: "carts#show"
  delete 'cart/:id', to: "carts#destroy"

  post 'cart_items/:id/add', to: "cart_items#add_quantity", as:'cart_item_add'
  post 'cart_items/:id/update', to: "cart_items#update_quantity", as:'cart_item_update'
  delete 'cart_items/:id', to: "cart_items#delete_item", as:'cart_item_delete'
  resources :cart_items
end
