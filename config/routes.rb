Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'v1/auth'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :product_boxes
      resources :product_adopts
    end
  end
end
