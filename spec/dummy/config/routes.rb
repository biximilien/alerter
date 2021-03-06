# frozen_string_literal: true

Rails.application.routes.draw do
  resources :model_mocks
  mount Alerter::Engine => '/alerts'
end
