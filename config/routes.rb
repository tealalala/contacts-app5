Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  ## unnamespaced contacts
  get '/contacts' => 'contacts#index'
  # get '/contacts/new' => 'contacts#new'
  # post '/contacts' => 'contacts#create'
  # get '/contacts/:id' => 'contacts#show'
  # get '/contacts/:id/edit' => 'contacts#edit'
  # patch '/contacts/:id' => 'contacts#update'
  # delete '/contacts/:id' => 'contacts#destroy'


  namespace :api do
    ## contacts
    get '/contacts' => 'contacts#index'
    get '/contacts/:id' => 'contacts#show'
    post '/contacts' => 'contacts#create'
    patch '/contacts/:id' => 'contacts#update'
    delete '/contacts/:id' => 'contacts#destroy'

    ## users
    get '/users/:id' => 'users#show'
    post '/users' => 'users#create'

    ## sessions
    post '/sessions' => 'sessions#create'
  end

end
