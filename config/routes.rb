Rails.application.routes.draw do
  resources :posts
  resources :pages

  # get '/pages', to: 'pages#index'

  # post '/pages', to: 'pages#create'

  # get '/pages/new', to: 'pages#new'
  
  # get '/pages/:id', to: 'pages#show' 

  # get '/pages/:id/edit', to: 'pages#edit' ,as: 'edit_page'
 
  # patch '/pages/:id' , to: 'pages#update'

  # delete '/pages/:id', to: 'pages#destroy'
#get for getting a url request s
# pages is cntroller action is call index method in it.
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
