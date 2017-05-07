Rails.application.routes.draw do
  resources :comments
  resources :posts
  get 'posts/:id/comments', to: 'posts#comments', as: 'post_comments'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
