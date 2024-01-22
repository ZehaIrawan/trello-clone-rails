Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :boards do
    resources :lists do
      resources :cards
    end
  end
end
