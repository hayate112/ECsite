Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }

  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions',
    passwords: 'admins/passwords'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get '/about' => 'homes#about'

  namespace :admins do
    resources :users, except:[:new, :create, :destory]
    resources :products, except:[:destory]
    resources :product_types, except:[:new, :show, :destory]
    resources :orders, only:[:index, :show, :update]
    resources :ordered_products, only:[:update]
  end

  scope module: :users do
    resource :users, only:[:show] do
      collection do
        get 'unsubscribe'
        patch 'withdraw'
      end
    end
    resources :products, only:[:index, :show]
    resources :cart_products, except:[:new, :show, :edit] do
      collection do
        delete 'destory_all'
      end
    end
    resources :receivers, except:[:new, :show]
    resources :orders, except:[:edit, :update, :destory] do
      collection do
        post 'comfirm'
        get 'finish'
      end
    end
  end

end
