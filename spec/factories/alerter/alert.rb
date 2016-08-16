module Alerter
  FactoryGirl.define do
    factory :alert, class: Alert do
      source { model_mock }
      target { model_mock }
      object { nil }
      message { :test }
    end
  end
end
