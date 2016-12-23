Rails.application.routes.draw do

    root to: 'pages#home'

    get '/salut/(:name)', to: 'pages#salut', as: 'salut'
    get '/articles', to: 'posts#index', as: 'posts'
end
