Rails.application.routes.draw do
  mount SP::Alerts::Engine => "/alerts"
end
