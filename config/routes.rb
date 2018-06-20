Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :delivery_infos
  resources :orders
  post '/pizzas/cart/:id', to:"home#add_to_cart", as:'add_pizza_to_cart'
  get '/cart', to:"carts#index", as:'cart_index'
  root to: "home#index"
end
