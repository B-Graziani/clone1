Rails.application.routes.draw do
root to: "pages#home"
resources :flats, only: [:index, :show, :edit, :update, :new, :create, :destroy] do
  collection do
    get :top
  end
  member do
    get :email
  end
  resources :reviews, only: [:new, :create]
end
resources :reviews, only: [:destroy]
end
