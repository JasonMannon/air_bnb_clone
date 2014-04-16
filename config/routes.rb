Airrnb::Application.routes.draw do
  devise_for :owners
  resources :comments
  root to: "owners#index"
  get 'contact', to: 'owners#contact', as: 'contact'
end
