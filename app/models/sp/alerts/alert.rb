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
      return '' if @message.nil?
      Message.for(@message).new(@source, @target, @object).message
    end

    alias_method :to_s, :message

  end
end
