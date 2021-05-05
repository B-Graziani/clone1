Rails.application.routes.draw do
root to: "pages#home"
resources :flats, only: [:index]
end
