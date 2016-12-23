Rails.application.routes.draw do

    root to: 'pages#home'
    resources :posts
    resources :categories
end
