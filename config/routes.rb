Rails.application.routes.draw do
  resources :tags do
    collection do
      get 'stats'
    end
  end

  post 'breeds/:id/tags', to: 'breeds#update'

  resources :breeds do
    collection do
      get 'stats'
    end

    member do
      get 'tags', to: 'breeds#show'
    end
  end

  root 'breeds#index'
end
