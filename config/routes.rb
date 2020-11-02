Rails.application.routes.draw do
  resources :inventory_items
  resources :items
  resources :shops
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
