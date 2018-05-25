Rails.application.routes.draw do
  get 'player_registration/index'
  get 'player_registration/form'
  post 'player_registration/upload'
  get 'player_registration/download'

  get 'home/index'             
  get 'home/main'              

  root "home#index"



  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  
  end

  
end
