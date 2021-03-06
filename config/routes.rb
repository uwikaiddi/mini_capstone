Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get '/products' => 'products#index'
    post '/products' => 'products#create'
    get 'products/:id' => 'products#show'
    patch 'products/:id' => 'products#update'
    delete 'products/:id' => 'products#destroy'

    post "/sessions" => 'sessions#create'

    post "/carted_products" => 'carted_products#create'
  end
end
