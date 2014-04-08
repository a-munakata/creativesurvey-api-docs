Docs::Application.routes.draw do
  resources :docs
  resources :entries
  resources :variables
  resources :categories

  get "preview", :to => "docs#preview"


  get "edit",  :to =>"docs#edit"
  post "edit", :to => "docs#save"

  get "add_variable", :to => "variables#add"
  get "add_entry",    :to => "entries#add"
  get "add_category", :to => "categories#add"

  get "redraw_page",  :to => "docs#redraw_page"

  root :to => "docs#index"
end


