Rails.application.routes.draw do
  root 'events#index'
  get "/events", to: "events#index", as: "events"
  get "/events/new", to: "events#new", as: "new_event"
  get "/events/:id", to: "events#show", as: "event"
  post "/events", to: "events#create"
  get "/events/:id/edit", to: "events#edit", as: "edit_event"
  patch "/events/:id", to: "events#update"
  put "/events/:id", to: "events#update"
  delete "/events/:id", to: "events#destroy"
  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end

