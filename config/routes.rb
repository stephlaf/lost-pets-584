Rails.application.routes.draw do
  # verb 'path', to: 'controller#action', as: :prefix
  root to: 'pets#index'
  # get '/pets', to: 'pets#index'

  # new
  get '/pets/new', to: 'pets#new', as: :new_pet
  post '/pets', to: 'pets#create'

  # show
  get '/pets/:id', to: 'pets#show', as: :pet

  # edit
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch '/pets/:id', to: 'pets#update'

  # delete
  delete '/pets/:id', to: 'pets#destroy'
end
