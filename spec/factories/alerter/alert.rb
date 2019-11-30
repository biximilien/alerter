# frozen_string_literal: true

module Alerter
  FactoryBot.define do
    factory :alert, class: Alert do
      association :source, factory: :model_mock
      association :target, factory: :model_mock
      object { nil }
      key { :test }
    end
  end
end
