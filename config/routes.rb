Rails.application.routes.draw do
  root 'stories#index'

  resources :stories do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
end
