Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # root to: 'admin/dashboard#index'
  root  'home#index'
  
  namespace :api do
    namespace :v1 do
      
      resources :users
      resources :reset_passwords
    end
  end

end
