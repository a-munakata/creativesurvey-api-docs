Docs::Application.routes.draw do
  resources :entries, :only => %w(index) do
    collection do
      get "spawn"
    end
  end

  root to: "entries#index"
end


