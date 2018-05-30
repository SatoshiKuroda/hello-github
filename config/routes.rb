Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get   'home/index'             
  get   'home/main' 
               
  get   'player_registration/index'
  post  'player_registration/new'
  post  'player_registration/create'
  get   'player_registration/download'

  get   'player/index'

  root "home#index"

  resources :players
  resources :player_registrations


  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  
  end

  
end
