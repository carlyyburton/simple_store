Rails.application.routes.draw do
  get 'products/index'
  get '/products/:id', to: 'products#show', as: 'product'
  root 'products#index'
  resources :products
end
