FactoryBot.define do
  factory :model_mock do
    name { "Stuff" }
    content { "Lorem Ipsum" }
    stuffable { true }
  end
end
