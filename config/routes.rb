Docs::Application.routes.draw do
  resources :variables


  resources :docs
  resources :entries
  resources :variables
  resources :categories

  get "preview", :to => "docs#preview"

  get "edit",  :to =>"docs#edit"
  post "edit", :to => "docs#save"

  get "add_variable", :to => "variables#add"
  get "add_entry",    :to => "entries#add"

  root :to => "docs#index"
end


