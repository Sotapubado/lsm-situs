Rails.application.routes.draw do

  devise_for :users

  #basecontroller
  get 'base/index' => 'base#index'
  get 'base/link' => 'base#link'

  resources :users, only: [:show] 

  #tweetscontroller
  get 'tweets' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'
  post 'tweets' => 'tweets#create'

  get 'tweets/:id' => 'tweets#show',as: 'tweet'
  delete 'tweets/:id' => 'tweets#destroy'
  root 'base#index'


end
