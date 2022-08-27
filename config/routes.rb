Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'v1/auth'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :v1 do
    resources :products
    get 'my-products', to: 'products#all_your_products', as: 'my_products'
    post 'orders', to: 'orders#complete_order', as: 'complete_order'
  end
end
