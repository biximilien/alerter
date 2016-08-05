module SP::Alerts
  class Alert < ApplicationRecord

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

    validates :source_url,
      presence: true,
      allow_blank: false

    validates :target_url,
      presence: true,
      allow_blank: false

    validates :message,
      presence: true,
      allow_blank: false

    validates :object,
      presence: false,
      allow_blank: false

    validates :object_url,
      presence: false,
      allow_blank: false

  end
end
