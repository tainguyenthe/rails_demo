Rails.application.routes.draw do
  #get 'blog/index'
  #resources :articles

  root 'page#home'

  get '/home', to: 'page#home'
end
