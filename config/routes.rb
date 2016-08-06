SP::Alerts::Engine.routes.draw do
  resources :alerts, only: [ :index, :show, :destroy ]
end
