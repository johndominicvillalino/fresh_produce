Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'v1/auth'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :v1 do
    resources :products
    get 'my-products', to: 'products#all_your_products', as: 'my_products'
    post 'orders', to: 'orders#complete_order', as: 'complete_order'
    post 'cart', to: 'carts#add_to_cart', as: 'add_cart'
    get 'cart', to: 'carts#cart_items', as: 'cart_items'
    delete 'cart/:id', to: 'carts#remove_cart_item', as: 'remove_cart_item'
    get 'orders', to: 'orders#my_orders', as: 'my_orders'
    get 'sold', to: 'solds#all_sold', as: 'my_solds'
    get 'farmers', to: 'farmers#get_all_farmers', as: 'all_farmers'
  end
end
