Rails.application.routes.draw do
  root 'todos#index'
  resources :tags, except: [:show]
  resources :todos  
  put '/todos/:id/toggle', to: 'todos#toggle', as: 'toggle'
end
