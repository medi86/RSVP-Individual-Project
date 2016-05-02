Rails.application.routes.draw do
  root 'events#index'
  get "/events", to: "events#index", as: "events"
  get "/events/new", to: "events#new", as: "new_event"
  # get "/events/:id", to: "events#show", as: "tool"
  post "/events", to: "events#create"
  # get "/events/:id/edit", to: "events#edit", as: "edit_tool"
  # patch "/events/:id", to: "events#update"
  # put "/events/:id", to: "events#update"
  # delete "/events/:id", to: "events#destroy"

end

