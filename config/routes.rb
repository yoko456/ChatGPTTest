Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  get '/', to: 'chats#index', as: 'index_Chat'

  root to: 'chats#index'
  get 'search', to: 'chats#search', as: 'search'
end
