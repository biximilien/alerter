# frozen_string_literal: true

Alerter::Engine.routes.draw do
  resources :alerts, only: %i[index show destroy]
end
