module SP::Alerts
  class Alert < ApplicationRecord
    self.table_name = "alerts"

    belongs_to :source,
      polymorphic: true

    belongs_to :target,
      polymorphic: true

    belongs_to :object,
      polymorphic: true

    validates :source,
      presence: true

    validates :target,
      presence: true

    validates :message,
      presence: true,
      allow_blank: false

    validates :object,
      presence: false,
      allow_blank: false

  end
end
