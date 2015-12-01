Rails.application.routes.draw do
  #get 'blog/index'
  #root 'blog#index'
  #resources :articles
  
  get '/home', to: 'page#home'
end
