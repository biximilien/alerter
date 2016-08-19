module Alerter
  class Alert < ApplicationRecord
    self.table_name = "alerts"

    belongs_to :source,
      polymorphic: true

    belongs_to :target,
      polymorphic: true

    belongs_to :object,
      polymorphic: true,
      optional: true

    validates :source,
      presence: true

    validates :target,
      presence: true

    validates :key,
      presence: true,
      allow_blank: false

    validates :object,
      presence: false,
      allow_blank: false,
      allow_nil: true

    def message
      return '' if key.nil? || key.blank?
      Message.new(
        target: target,
        source: source,
        object: object,
        message: key)
    end

    alias_method :to_s, :message

  end
end
