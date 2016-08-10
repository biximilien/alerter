FactoryGirl.define do
  factory :alert, class: 'SP::Alerts::Alert' do
    source { model_mock }
    target { model_mock }
    object { nil }
    message { :test }
  end
end
