Rails.application.routes.draw do

  get 'search/index'
  get 'results' => 'search#results', as: :results

  resources :podcasts, only: :show do
  	resources :episodes, only: :show
  end

  resources :users
  resources :posts, only: [:create, :destroy]	

  post 'login' => 'registrations#login', as: :login
  post 'logout' => 'registrations#logout', as: :logout
  post 'newuser' => 'registrations#newuser', as: :newuser
  get 'useraccount' => 'registrations#useraccount', as: :useraccount
  get 'newuser' => 'registrations#newuser', as: :newuserform
  
  root 'search#index'
end
