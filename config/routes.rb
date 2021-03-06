Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/shelters', to: 'shelters#index'
  get '/shelters/:id/pets', to: 'shelters#pets'
  get '/shelters/new', to: 'shelters#new'
  get '/shelters/:id/pets/new', to: 'pets#new'
  post '/shelters/:id/pets/new', to: 'pets#create'

  post '/shelters', to: 'shelters#create'
  get '/shelters/:id', to: 'shelters#show'
  get '/shelters/:id/edit', to: 'shelters#edit'
  patch '/shelters/:id', to: 'shelters#update'
  delete '/shelters/:id', to: 'shelters#destroy'
  # resources :shelters
  get '/pets', to: 'pets#index'
  get '/pets/:id', to: "pets#show"

end
