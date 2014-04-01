Docs::Application.routes.draw do
  resources :entries


  resources :docs
  resources :entries
  resources :variables
  resources :categories

  get "edit",  :to =>"docs#edit"
  post "edit", :to => "docs#save"

  root :to => "docs#index"
end


