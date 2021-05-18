Rails.application.routes.draw do

  # ログイン未実装
  root to: 'tasks#index'

  # セッション
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # ユーザー
  get 'signup', to: 'users#new'
  # show は不要
  resources :users, only: [:index, :create]
  
  # タスク
  resources :tasks


end
