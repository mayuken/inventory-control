Rails.application.routes.draw do
  root to: 'foodstuffs#index'
  resources :foodstuffs, only: [:index, :new, :create]
end
