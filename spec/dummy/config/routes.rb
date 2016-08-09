Rails.application.routes.draw do
  resources :model_mocks
  mount SP::Alerts::Engine => "/alerts"
end
