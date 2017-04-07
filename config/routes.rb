Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, :authors
  root 'books#index'
  
  post '/books/:id/review', to:'books#create_review'
  # get '/books/', to: 'books#index'
  #get '/books/new', to: 'books#new'
 # post '/books', to: 'books#create'
 # get '/books/:id/edit', to: 'books#edit'
  #put '/books/:id' , to:'books#update'
  #get '/books/:id' , to: 'books#show'

 # get '/authors', to: 'authors#index'
 # get '/authors/new', to: 'authors#new'
  #post '/authors', to: 'authors#create'
  #get '/authors/:id/edit', to: 'authors#edit'
  #put '/authors/:id' , to:'authors#update'
end