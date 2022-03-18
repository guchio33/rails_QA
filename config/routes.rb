Rails.application.routes.draw do
  resources :questions
  root 'home#index'
  get 'home/index'
  devise_for :users, controllers: { 
    registrations: 'users/registrations', #app/controllers/users/registrations参照 ユーザ登録
    session: 'users/sessions'#app/controllers/users/sessions参照 ログイン
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
