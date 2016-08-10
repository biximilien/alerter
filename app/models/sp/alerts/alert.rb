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

    def message
      return '' if self[:message].nil? || self[:message] == ''
      Message.for(self[:message]).new(target, source, object).message
    end

    alias_method :to_s, :message

  end
end
