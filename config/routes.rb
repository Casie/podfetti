Rails.application.routes.draw do

  get 'search/index'
  get 'results' => 'search#results', as: :results

  resources :podcasts, only: :show
  resources :episodes, only: :show
  resources :users
  resources :comments	
  
  root 'search#index'
end
