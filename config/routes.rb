Rails.application.routes.draw do
  root to: 'web/welcome#index'

  namespace :api do
    resources :users, only: :create
  end
end
