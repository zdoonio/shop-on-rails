Rails.application.routes.draw do
  get 'cart/show'
  get 'cart/edit'
  get 'cart/confirmation'
  namespace :admin do
    root to: "products#index"
    resources :products
    resources :categories
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
