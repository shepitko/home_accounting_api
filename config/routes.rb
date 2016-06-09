Rails.application.routes.draw do

  #mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
      resources :profiles , only: [:me], on: :collection
      resources :users , only: [:index, :show]
      resources :wallets,  only: [:index, :show, :create, :destroy, :update]
      resources :categories, only: [:index, :show, :create, :destroy, :update]
      get '/categories/types/:type', to: 'categories#types'
    end
  end
end
