Rails.application.routes.draw do

  namespace :api do
    post "/users" => 'users#create'

    post "/sessions" => 'sessions#create'

    get "/products" => 'products#index'
    get "/products/:id" => 'products#show'
    post "/products" => 'products#create'
    patch "/products/:id" => 'products#update'
    delete "/products/:id" => 'products#destroy'
    
    get "/orders" => 'orders#index'
    post "/orders" => 'orders#create'

    get "/carted_products" => 'carted_products#index'
    post "/carted_products" => 'carted_products#create'
  end  
end
