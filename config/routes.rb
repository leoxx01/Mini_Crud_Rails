Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#show"

  #Cadastro
  get '/users/new' , to: "user#new"
  post '/users', to: "user#create"

  #login
  post '/users/login', to: "login#login"
  get '/users/login', to: "login#new"
  
  get 'users/sign_out', to: "login#destroy"

  #Inicio 

  get 'user/edit/:id', to: "start#edit"
  post 'user/edit/:id' ,to: "start#update"

  

end
