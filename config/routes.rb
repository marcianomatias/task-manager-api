Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, default: { format: :json }, constraints: { subdomain: 'api'}, path: "/" do
  #namespace :v1, path:"/", constraints: ApiVersionConstraint.new(version: 1) do
   resources :tasks
  #end
  # Defines the root path route ("/")
  # root "articles#index"
end
end
