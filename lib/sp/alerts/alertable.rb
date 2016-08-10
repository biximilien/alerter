module SP::Alerts::Alertable
  extend ActiveSupport::Concern

  def alert(args = {})
    SP::Alerts::Alert.create!(
      args.slice(:source, :message, :object).merge(target: self).compact
    )
  end

  included do
    has_many :alerts, as: :target, class_name: 'SP::Alerts::Alert'
  end

end
