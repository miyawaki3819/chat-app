Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  # 下記を削除していいか確認
  # get 'messages/index'
  # root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end
