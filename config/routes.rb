Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # post 'signin', to: 'agent#signin'
      # post 'validate', to: 'agent#validate'
      # post 'update', to: 'agent#update'
      resources :agents, only: [:index, :show, :update]
      resources :models, only: [:index, :show, :update, :create, :destroy]
      resources :jobs, only: [:index, :show, :update, :new, :create]
      resources :shoots, only: [:index, :show, :update, :create]
      resources :castings, only: [:index, :show, :update, :create]

    end
  end
end
