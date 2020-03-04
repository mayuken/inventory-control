Rails.application.routes.draw do
  root to: 'foodstuffs#index'
  resources :foodstuffs, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection do
      post :category_create
      post :destroy_all
    end
  end
  resources :categories, only: [:new, :create] do
    member do
     patch :category_create_edit
    end
    collection do
     post :category_destroy
    end
  end
end
