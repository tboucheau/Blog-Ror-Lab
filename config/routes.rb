Rails.application.routes.draw do

  get 'posts/index'

    root to: 'pages#home'

    get '/salut/(:name)', to: 'pages#salut', as: 'salut'
    get '/articles', to: 'posts#index', as: 'posts'
end
