Rails.application.routes.draw do
  devise_for :users
  resources :penguins
  root "penguins#index"
end
