Docs::Application.routes.draw do
  resources :docs
  resources :entries
  resources :variables
  resources :categories

  get "preview", :to => "docs#preview"

  get "edit",  :to =>"docs#edit"
  post "edit", :to => "docs#save"

  root :to => "docs#index"
end


