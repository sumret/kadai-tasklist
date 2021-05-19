Rails.application.routes.draw do

  root to: 'tasks#index'

  # セッション
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # ユーザー
  get 'signup', to: 'users#new'
  resources :users, only: [:create]
  
  # タスク
  resources :tasks

end
