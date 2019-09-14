Rails.application.routes.draw do
  devise_for :users
  resources :links
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end

  resources :posts do
    member do
      put "like", to: "posts#upvote"
      put "dislike", to: "posts#downvote"
    end
  end

  resources :pages

  resources :categories do
    resources :posts
  end
  
  root to: "posts#index"
  
  # get    '/pages',          to: 'pages#index'
  # post   '/pages',          to: 'pages#create'
  # get    '/pages/new',      to: 'pages#new',  as: 'new_page'
  # get    '/pages/:id',      to: 'pages#show', as: 'page'
  # get    '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  # patch  '/pages/:id',      to: 'pages#update'
  # delete '/pages/:id',      to: 'pages#destroy'
end
