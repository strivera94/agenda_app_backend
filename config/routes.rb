Rails.application.routes.draw do
  resources :tasks, only:[:index, :show, :create, :update, :destroy]
  resources :agendas, only: [:index, :show, :create, :destroy]
  resources :users, only: [:index, :show, :create]
end