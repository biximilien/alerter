module Alerter::Alertable
  extend ActiveSupport::Concern

  def alert(args = {})
    Alerter::Alert.create!(
      args.slice(:source, :message, :object).merge(target: self).compact
    )
  end

  included do
    has_many :alerts, as: :target, class_name: 'Alerter::Alert'
  end

end
