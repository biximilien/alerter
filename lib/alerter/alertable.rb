module Alerter
  module Alertable
    extend ActiveSupport::Concern

    def alert source:, message:, object: nil
      Alert.create!(
        source: source,
        message: message,
        object: object,
        target: self)
    end

    included do
      has_many :alerts, as: :target, class_name: 'Alerter::Alert'
    end

  end
end
