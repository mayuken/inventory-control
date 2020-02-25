Rails.application.routes.draw do
  root to: 'foodstuffs#index'
  resources :foodstuffs, only: [:index, :new, :create] do
    collection do
      post :category_create
    end
  end
  resources :categories, only: [:new, :create]
end
