Rails.application.routes.draw do

  get 'search/index'
  get 'results' => 'search#results', as: :results

  resources :podcasts, only: :show do
  	resources :episodes, only: :show
  end
  resources :users
  resources :comments	
  
  root 'search#index'
end
