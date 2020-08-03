Rails.application.routes.draw do
  devise_for :users
  # as :user do
  #   get "signin" => "devise/sessions#new"
  #   post "signin" => "devise/sessions#create"
  #   delete "signout" => "devise/sessions#destroy"
  # end
  root 'todos#index'
  resources :tags, except: [:show]
  resources :todos  
  put '/todos/:id/toggle', to: 'todos#toggle', as: 'toggle'
  
end
