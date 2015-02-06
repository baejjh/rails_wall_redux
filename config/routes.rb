SimpleLogin::Application.routes.draw do
  root 'users#new'
  resources :users            #use all users RESTful routes
  resources :sessions, :only => [:new, :create, :destroy] #only need 3 restful routes for Sessions

  get "/signup"               => 'users#new'
  get "/signin"               => 'sessions#new'
  get "/signout"              => 'sessions#destroy'

  get "/messages/index"
  get "/messages/destroy"

end
