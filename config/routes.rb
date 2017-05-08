Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  resources :comments
  resources :posts
  get 'posts/:id/comments', to: 'posts#comments', as: 'post_comments'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
