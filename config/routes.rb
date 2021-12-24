Rails.application.routes.draw do


  # get 'c_transactions/new' , to: 'c_transactions#new'
  resources :s_transactions
  resources :c_transactions
  resources :suppliers
  resources :customers
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
