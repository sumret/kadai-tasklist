Rails.application.routes.draw do

  # ログイン未実装
  root to: 'tasks#index'

  # セッション
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # ユーザー
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]
  
  # タスク
  resources :tasks


end
