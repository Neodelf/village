Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'main#home'
  resources :buildings, only: :show
  resources :order_calls, only: :create
end
