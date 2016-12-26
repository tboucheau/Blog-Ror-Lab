Rails.application.routes.draw do

    get '/messages', to: 'messages#index'
    get '/demo', to: 'messages#demo'
    root to: 'pages#home'
    resources :posts
    resources :categories
end
