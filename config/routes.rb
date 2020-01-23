Rails.application.routes.draw do
  # get "/authors/new", to: "authors#new", as: "new_author"
  # get "/authors/:id", to: "authors#show", as: "author"
  # get "/posts/:id/edit", to: "posts#edit", as: "edit_post"
  # post "/authors", to: "authors#create"

  # get "/posts/:id", to: "posts#show", as: "post"
  # get "/posts/:id/edit", to: "posts#edit", as: "edit_post"
  # patch "/posts/:id", to: "posts#update"
  resources :authors #, only: [show new edit create update]
  resources :posts#, only: [show new edit create update]
  # top means show by prioroty?
end
