MyEngine::Engine.routes.draw do
  resources :tests, only: :index
end
