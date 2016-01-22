Rails.application.routes.draw do
  # get 'homes/show'
  # get 'homes/index'

  #root 'blog#index'
  #resources :articles
  
  root 'page#home'

  get '/home', to: 'page#home'

  # get '/recipes', to: 'recipes#index'
  # get '/recipes/new', to: 'recipes#new', as: 'new_recipe'
  # post '/recipes/:id', to: 'recipes#create'
  # get '/recipes/:id/edit', to: 'recipes#edit', as: 'edit_recipe'
  # patch '/recipes/:id', to: 'recipes#update'
  # get 'recipes/:id', to: 'recipes#show', as: 'recipe'
  # delete '/recipes/:id', to: 'recipes#destroy'
  resources	:recipes
end
