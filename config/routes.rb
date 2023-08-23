Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'boards', to: 'boards#index'
      post 'boards/create', to: 'boards#create'
      get 'boards/show/:id', to: 'boards#show'
      delete 'boards/destroy/:id', to: 'boards#destroy'
      post 'lists/create', to: 'boards#create'
      put 'lists/:id', to: 'lists#update'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
