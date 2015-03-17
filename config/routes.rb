Rails.application.routes.draw do

  get 'search/index'
  get 'results' => 'search#results', as: :results

  resources :podcasts, only: :show
  resources :episodes, only: :show
  resources :users
  
  root 'search#index'
end
