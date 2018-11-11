Rails.application.routes.draw do
  get "regulamin", to: "static#therms", as: :terms
  get "polityka-prywatnosci", to: "static#privacy", as: :privacy
  get "dostawa", to: "static#shipping", as: :shipping
  get "o-sklepie", to: "static#about", as: :about


  root to: "products#index"
  resources :products, only: [:show, :index]
  resources :category, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
