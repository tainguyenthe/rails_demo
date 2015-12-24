Rails.application.routes.draw do
  #root 'blog#index'
  #resources :articles
  
  root 'page#home'
  get '/home', to: 'page#home'
end
