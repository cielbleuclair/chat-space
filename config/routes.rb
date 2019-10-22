Rails.application.routes.draw do
  devise_for :users
  root 'groups#index' # ルートパスを変更
  # root 'messages#index'
  resources :users, only: [:edit, :update] # ルーティングを追加
  resources :groups, only: [:new, :create, :edit, :update] do # グループ機能のルーティングを定義
    resources :messages, only: [:index, :create] # メッセージ送信機能の実装に必要なルーティングを追加
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
