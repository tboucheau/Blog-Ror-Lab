Rails.application.routes.draw do

  get 'categories/show'

  get 'categories/new'

  get 'categories/edit'

  get 'categories/destroy'

  get 'categories/update'

  get 'categories/index'

    root to: 'pages#home'
    get '/salut/(:name)', to: 'pages#salut', as: 'salut'
    resources :posts
    resources :categories
end
