Airrnb::Application.routes.draw do
  devise_for :owners
  resources :owners do
    resources :listings do
      resources :photos
    end
  end
  resources :listings
  resources :photos
  resources :comments
  resources :bookings
  root to: "owners#index"
  get 'contact', to: 'owners#contact', as: 'contact'
end
