Rails.application.routes.draw do
  root to: 'web/welcome#index'

  namespace :api do
    resources :users, only: :create
  end

  scope module: :web do
    resource :session, only: [:new, :create, :destroy]
    namespace :admin do
      root to: 'welcome#index'
      resources :users, except: :show
    end
  end
end
