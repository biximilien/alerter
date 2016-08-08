module SP::Alerts::Alertable
  extend ActiveSupport::Concern

  def alert(source, message, object = nil)
    SP::Alerts::Alert.create(
      target: self,
      source: source,
      message: message,
      object: object)
  end

  included do
    has_many :alerts, as: :target
  end

end
