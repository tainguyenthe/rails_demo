Rails.application.routes.draw do
  get 'homes/show'
  
  get 'homes/index'

  

  #root 'blog#index'
  #resources :articles
  
  root 'page#home'
  get '/home', to: 'page#home'
end
