Rails.application.routes.draw do
  root to: 'foodstuffs#index'
  resources :foodstuffs, only: [:index, :new, :create, :edit, :update] do
    collection do
      post :category_create
    end
  end
  resources :categories, only: [:new, :create] do
    member do
     patch :category_create_edit
    end
  end
end
