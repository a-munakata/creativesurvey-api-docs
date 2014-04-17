Docs::Application.routes.draw do
  resources :docs
  resources :entries
  resources :categories

  root :to => "docs#index"
end


