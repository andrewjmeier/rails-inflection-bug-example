Rails.application.routes.draw do
  mount MyEngine::Engine => "/myengine"
end
