Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespece :admin do
    resources :products
    resources :product_types
    resources :orders
    resources :ordered_products
  end
  
  scope module: :customers do
    resources :products
    resources :cart_products
    resources :receivers
    resources :orders
  end
end
