Rails.application.routes.draw do

    get '/messages',"messages#index"
    root to: 'pages#home'
    resources :posts
    resources :categories
end
