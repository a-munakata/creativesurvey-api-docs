Docs::Application.routes.draw do
  resources :docs, :only => %w(index) do
    collection do
      get "spawn"
    end
  end

  root to: "docs#index"
end


