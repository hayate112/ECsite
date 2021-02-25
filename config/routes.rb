Rails.application.routes.draw do
  root to: 'homes#top'
  get '/about' => 'homes#about'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admins do
    resources :users, except:[:new, :create, :destory]
    resources :products, except:[:destory]
    resources :product_types, except:[:new, :show, :destory]
    resources :orders, only:[:index, :show, :update]
    resources :ordered_products, only:[:update]
  end

  scope module: :users do
    resource :users, only:[:show, :edit, :update]
    resources :products, only:[:index, :show]
    resources :cart_products, except:[:new, :show, :edit]
    resources :receivers, except:[:new, :show]
    resources :orders, except:[:edit, :update, :destory]
  end
end
