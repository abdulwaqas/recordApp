Rails.application.routes.draw do
  root 'home#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
    devise_for :users

  resources :suppliers 
  resources :s_transactions


  resources :customers 
  resources :c_transactions
  
  




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
