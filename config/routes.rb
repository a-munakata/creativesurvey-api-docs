Docs::Application.routes.draw do
  resources :docs

  root :to => "docs#index"
end


