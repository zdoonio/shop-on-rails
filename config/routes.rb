Rails.application.routes.draw do
  get 'moje-konto', to: 'account#show', as: :account_show
  post 'moje-konto', to: 'account#update', as: :account_update
  devise_for :users
  resource :cart, controller: "cart", only: [:show, :update, :edit] do
    member do
      post :add_product
      post :remove_product
      get :confirmation
      post :finish
    end
  end

  namespace :admin do
    root to: "products#index"
    resources :products
    resources :categories
    get 'orders', to: 'orders#index', as: :orders
    get 'order/show/:id', to: 'orders#show', as: :order_show
    post 'order/show/:id', to: 'orders#update', as: :order_update
    # resources :orders, only: [:show, :index, :update]
  end
  get "regulamin", to: "static#terms", as: :terms
  get "polityka-prywatnosci", to: "static#privacy", as: :privacy
  get "dostawa", to: "static#shipping", as: :shipping
  get "o-sklepie", to: "static#about", as: :about

  root to: "products#index"
  resources :products, only: [:show, :index], path: "produkt"
  resources :categories, only: [:show], path: "kategoria"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
